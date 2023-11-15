Arquitectura de Computadoras - 2023 - Trabajo Práctico II

# Trabajo Práctico N°2 - Implementación de una interfaz UART - ALU

## Repositorio

https://github.com/FrancoNB/ARQ_ICOMP_2023-TP2

## Autores

Nombres: Valentin Robledo, Franco Bottini

Usuarios en github: valentinrb, FrancoNB

## Descripción General
Este informe describe la implementación de un sistema en Verilog que consta de una interfaz entre una Unidad Aritmético Lógica (ALU) y un módulo UART (Universal Asynchronous Receiver/Transmitter). El sistema se ha diseñado para transmitir datos entre la ALU y el UART, permitiendo la comunicación entre estos dos componentes.

## Estructura del Código
El código está organizado en varios módulos que se interconectan para lograr la funcionalidad requerida. A continuación, se describen los principales módulos involucrados en el sistema:

### Módulo `alu`
El módulo ALU (Unidad Aritmético Lógica) es responsable de realizar operaciones aritméticas y lógicas en dos operandos de ancho variable. El módulo toma como entrada un código de operación (`op_code`), dos operandos (`data_a` y `data_b`), y produce el resultado (`out_data`). Las operaciones que incluye son las siguientes:

### Operaciones

El módulo ALU puede realizar las siguientes operaciones, dependiendo del valor de `op_code`:

- `OP_ADD`: Suma `data_a` y `data_b`.
- `OP_SUB`: Resta `data_b` de `data_a`.
- `OP_AND`: Realiza la operación lógica AND entre `data_a` y `data_b`.
- `OP_OR`: Realiza la operación lógica OR entre `data_a` y `data_b`.
- `OP_XOR`: Realiza la operación lógica XOR entre `data_a` y `data_b`.
- `OP_SRA`: Realiza un desplazamiento aritmético a la derecha en `data_a` por la cantidad especificada en `data_b`.
- `OP_SRL`: Realiza un desplazamiento lógico a la derecha en `data_a` por la cantidad especificada en `data_b`.
- `OP_NOR`: Realiza la operación lógica NOR entre `data_a` y `data_b`.

Si el `op_code` no coincide con ninguna de las operaciones definidas, el resultado será indeterminado (`1'bz`).

### Módulo `fifo`
El módulo FIFO (First-In-First-Out) es una memoria intermedia utilizada para almacenar datos en cola. Puede almacenar y recuperar datos en función de señales de control. El tamaño de la FIFO es configurable, y en este sistema, se utiliza para almacenar datos transmitidos entre la ALU y el UART.

#### Parámetros:
- `FIFO_SIZE`: Este parámetro define el tamaño de la cola FIFO, es decir, cuántos elementos puede contener como máximo.
- `WORD_WIDTH`: Define el ancho de palabra de los elementos que se almacenan en la cola FIFO.

#### Registros:
- `array_reg`: Un arreglo de registros que almacena los datos en la cola FIFO.
- `w_ptr_reg`: Registro que guarda la posición del puntero de escritura en la cola FIFO.
- `r_ptr_reg`: Registro que guarda la posición del puntero de lectura en la cola FIFO.
- `full_reg`: Un registro que indica si la cola FIFO está llena.
- `empty_reg`: Un registro que indica si la cola FIFO está vacía.

#### Funcionamiento:
- La señal `wr_en` se utiliza para habilitar la escritura en la cola FIFO cuando se cumplen ciertas condiciones.
- Cuando `wr` está activo y la cola FIFO no está llena (`full_reg` es bajo), se escribe el valor presente en `w_data` en la posición indicada por `w_ptr_reg` en `array_reg`.
- La señal `r_data` se obtiene leyendo el valor presente en la posición indicada por `r_ptr_reg` en `array_reg`.
- El registro `w_ptr_reg` se actualiza para apuntar a la siguiente posición de escritura en la cola FIFO cuando se escribe un nuevo dato.
- El registro `r_ptr_reg` se actualiza para apuntar a la siguiente posición de lectura en la cola FIFO cuando se lee un dato.
- Los registros `full_reg` y `empty_reg` se actualizan en función del estado actual de la cola FIFO.
- La cola FIFO puede estar en uno de tres estados: lectura (`FIFO_STATE_READ`), escritura (`FIFO_STATE_WRITE`) o lectura y escritura simultánea (`FIFO_STATE_READ_AND_WRITE`).
- La señal `full` se activa cuando la cola FIFO está llena, y `empty` se activa cuando está vacía.

### Módulo `top_level`
El módulo `top_level` actúa como el módulo de nivel superior del diseño. Conecta todos los módulos anteriores y dirige la comunicación entre la ALU y el UART. Además, proporciona las señales de reloj (`clk`) y reinicio (`reset`) al sistema.

### Módulo `uart_tx`
El módulo UART es una implementación del hardware necesario para la comunicación UART. Esto incluye un módulo de generación de baudios (`uart_brg`), un receptor UART (`uart_rx`) y un transmisor UART (`uart_tx`). Estos módulos gestionan la recepción y transmisión de datos serie.

#### Parámetros:
- `DATA_BITS`: Define el número de bits de datos en el marco UART.
- `SB_TICKS`: Define el número de ciclos de reloj requeridos para un bit de parada en la comunicación UART.

#### Funcionamiento:
- El módulo `uart_tx` opera en función de varios estados definidos por `state_reg`. Estos estados incluyen `UART_STATE_IDLE`, `UART_STATE_START`, `UART_STATE_DATA` y `UART_STATE_STOP`, que son típicos de la transmisión UART.
- Cuando se activa el reinicio (`reset`), el módulo se restablece a un estado inicial, `UART_STATE_IDLE`, y se borran las variables de estado.
- El módulo utiliza un contador de tiempo `s_reg` para contar ciclos de reloj en función de `s_tick`. Esto se usa para determinar cuándo cambiar de estado.
- Cuando se activa `tx_start`, el módulo pasa al estado `UART_STATE_START`, lo que indica el inicio de la transmisión UART.
- En el estado `UART_STATE_START`, se prepara la transmisión activando la señal de transmisión `tx` en el estado bajo (`LOW`).
- A medida que el contador `s_reg` avanza en función de `s_tick`, se cambia al estado `UART_STATE_DATA` cuando se alcanza el número deseado de ciclos. En este estado, los datos se transmiten bit por bit, comenzando por el bit menos significativo de `din`.
- Finalmente, después de transmitir todos los bits de datos, se cambia al estado `UART_STATE_STOP` para enviar el bit de parada en alto (`HIGH`).
- Una vez que se completa la transmisión del bit de parada, el módulo regresa al estado `UART_STATE_IDLE`, y se activa `tx_done_tick` para indicar que la transmisión se ha completado.

### Módulo `uart_rx`
El módulo UART es una implementación del hardware necesario para la recepción de datos en una comunicación UART. Esto incluye un módulo de generación de baudios (`uart_brg`), un receptor UART (`uart_rx`) y un transmisor UART (`uart_tx`). Estos módulos gestionan la recepción y transmisión de datos serie.

#### Parámetros:
- `DATA_BITS`: Define el número de bits de datos en el marco UART.
- `SB_TICKS`: Define el número de ciclos de reloj requeridos para un bit de parada en la comunicación UART.

#### Funcionamiento:
- El módulo `uart_rx` opera en función de varios estados definidos por `state_reg`. Estos estados incluyen `UART_STATE_IDLE`, `UART_STATE_START`, `UART_STATE_DATA` y `UART_STATE_STOP`, que son típicos de la recepción UART.
- Cuando se activa el reinicio (`reset`), el módulo se restablece a un estado inicial, `UART_STATE_IDLE`, y se borran las variables de estado.
- El módulo utiliza un contador de tiempo `s_reg` para contar ciclos de reloj en función de `s_tick`. Esto se usa para determinar cuándo cambiar de estado.
- En el estado `UART_STATE_IDLE`, el módulo espera a que la señal de recepción `rx` esté inactiva (`LOW`) para detectar el inicio de la transmisión UART.
- Cuando se detecta el inicio de la transmisión, el módulo pasa al estado `UART_STATE_START`, donde se prepara para recibir los datos.
- En el estado `UART_STATE_START`, el módulo cuenta ciclos de reloj hasta que se alcanza la mitad del período de un bit de inicio. Luego, cambia al estado `UART_STATE_DATA` para recibir los bits de datos.
- En el estado `UART_STATE_DATA`, el módulo recibe los bits de datos a medida que llegan y los almacena en el registro `b_reg`. Cuando se han recibido todos los bits de datos, se cambia al estado `UART_STATE_STOP` para recibir el bit de parada.
- Una vez que se ha recibido el bit de parada, el módulo regresa al estado `UART_STATE_IDLE`, y se activa `rx_done_tick` para indicar que la recepción se ha completado.

### Módulo `intf_uart_alu`

El módulo `intf_uart_alu` actúa como una interfaz entre el UART y la ALU, permitiendo la comunicación y transferencia de datos entre estos dos componentes.

#### Parámetros

El módulo `intf_uart_alu` toma los siguientes parámetros:

- `IO_BUS_WIDTH`: Ancho del bus de datos de entrada y salida.
- `OP_CODE_WIDTH`: Ancho del campo de código de operación.
- Otros parámetros, como `INTF_STATE_REG_SIZE` y `SELECTOR_REG_SIZE`, se definen en un archivo de inclusión (`INTF_UART_ALU_VH`) que se utiliza en el diseño.

#### Entradas

El módulo `intf_uart_alu` tiene las siguientes entradas:

- `clk`: Reloj del sistema.
- `reset`: Señal de reinicio.
- `uart_empty`: Indica si el UART está vacío.
- `uart_full`: Indica si el UART está lleno.
- `uart_rx`: Datos recibidos desde el UART.
- `alu_result`: Resultado de una operación realizada por la ALU.

#### Salidas

El módulo `intf_uart_alu` produce las siguientes salidas:

- `uart_wr`: Señal para escribir en el UART.
- `uart_rd`: Señal para leer desde el UART.
- `uart_tx`: Datos que se transmitirán al UART.
- `alu_op_code`: Código de operación para la ALU.
- `alu_data_a` y `alu_data_b`: Datos de entrada para la ALU.

#### Funcionamiento

El módulo `intf_uart_alu` opera en varios estados, definidos por el campo `state_reg`. Los estados principales son:

- `INTF_STATE_IDLE`: Estado inicial y de espera.
- `INTF_STATE_READ`: Estado de lectura desde el UART.
- `INTF_STATE_WRITE`: Estado de escritura en el UART.

La lógica del módulo está diseñada para coordinar la transferencia de datos entre el UART y la ALU de la siguiente manera:

1. En el estado `INTF_STATE_IDLE`, se espera a que se complete una operación en curso.
2. Cuando se inicia una operación, se pasa al estado `INTF_STATE_READ` para leer datos desde el UART.
3. En el estado `INTF_STATE_READ`, se verifica si el UART no está vacío y se selecciona el tipo de dato que se va a leer (datos A, datos B o código de operación). Los datos leídos se almacenan en los registros correspondientes.
4. Una vez que se han leído todos los datos necesarios, se pasa al estado `INTF_STATE_WRITE` para escribir el resultado de la operación en el UART.
5. En el estado `INTF_STATE_WRITE`, se verifica si el UART no está lleno, y se envía el resultado de la ALU al UART.
6. Después de escribir en el UART, se regresa al estado `INTF_STATE_IDLE` para esperar la próxima operación.

## Funcionamiento general del sistema
El sistema opera de la siguiente manera:
1. El módulo UART recibe datos serie (`rx`) y los almacena en una FIFO de recepción. Cuando se reciben datos completos, se generan señales (`rx_done_tick`) para indicar que los datos están listos para su procesamiento.
2. El módulo `intf_uart_alu` se encarga de la coordinación entre la ALU y el UART. Recibe datos desde el UART y los envía a la ALU para su procesamiento. Una vez que la ALU ha completado la operación, los resultados se envían de vuelta al UART para su transmisión.
3. El módulo UART transmite los datos serie generando una señal de transmisión (`tx`) y enviando los datos desde una FIFO de transmisión.
4. La ALU realiza operaciones aritméticas y lógicas en los datos proporcionados por el UART y devuelve los resultados al UART.


## Señal UART en el Osciloscopio

![Osciloscopio 1](/Img/Osc%201.jpeg)

![Osciloscopio 2](/Img/Osc%202.jpeg)