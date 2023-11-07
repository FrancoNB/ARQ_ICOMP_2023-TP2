import sys
import time
import signal
import serial
import serial.tools.list_ports
import os

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def get_terminal_width():
    try:
        return os.get_terminal_size().columns
    except OSError:
        return 80 

def format_title(title, port, baudrate):
    width = get_terminal_width()

    if port and baudrate:
        title_width = len(title + f"-> Puerto: {port} | Baudrate: {baudrate} ")
        padding = (width - title_width) // 2
        return f"{'=' * padding}{title}-> Puerto: {port} | Baudrate: {baudrate} {'=' * padding}"
    else:
        title_width = len(title)
        padding = (width - title_width) // 2
        return f"{'=' * padding}{title}{'=' * padding}"

def format_separator():
    width = get_terminal_width()
    return "\n" + '=' * width + "\n"

def listar_puertos_disponibles():
    clear_screen()
    print(format_title(" Programa de Interfaz con FPGA ", "", ""))
    print("\nBienvenido. A continuación, seleccione un puerto serial para la comunicación.\n")
    ports = list(serial.tools.list_ports.comports())
    for i, port in enumerate(ports):
        print(f"{i + 1}. {port.device}")
    return ports

def seleccionar_puerto():
    ports = listar_puertos_disponibles()
    while True:
        try:
            opcion = int(input("\nSeleccione el número del puerto al que desea conectarse: "))
            if 1 <= opcion <= len(ports):
                return ports[opcion - 1].device
            else:
                print("\nOpción no válida. Ingrese un número válido.")
        except ValueError:
            print("\nEntrada no válida. Ingrese un número válido.")

def ingresar_baudrate():
    baudrate_options = [300, 1200, 2400, 4800, 9600, 19200, 38400, 57600, 115200]
    
    while True:
        print("\nSeleccione el baudrate:")
        for i, option in enumerate(baudrate_options):
            print(f"{i + 1}. {option}")
        
        try:
            opcion = int(input("\nIngrese el número de la opción: "))
            if 1 <= opcion <= len(baudrate_options):
                return baudrate_options[opcion - 1]
            else:
                print("\nOpción no válida. Ingrese un número válido.")
        except ValueError:
            print("\nEntrada no válida. Ingrese un número válido.")

def inicializar_puerto_serial(puerto, baudrate):
    return serial.Serial(port=puerto,
                         baudrate=baudrate,
                         parity=serial.PARITY_NONE,
                         stopbits=serial.STOPBITS_ONE,
                         bytesize=serial.EIGHTBITS,
                         timeout=0)

def sigint_handler(signal, frame):
    clear_screen()
    print("\nSeñal SIGINT recibida. Cerrando el programa.\n")
    if 'serial_port' in globals():
        serial_port.close()
    sys.exit(0)

def code_to_bin(code):
    op_codes = {
        "ADD": 0b100000,
        "SUB": 0b100010,
        "AND": 0b100100,
        "OR":  0b100101,
        "XOR": 0b100110,
        "SRA": 0b000011,
        "SRL": 0b000010,
        "NOR": 0b100111
    }
    return op_codes.get(code, 0b100000)

def write_to_fpga(data_to_send):
    data_to_send = int(data_to_send).to_bytes(1, 'big',  signed=True)
    serial_port.write(data_to_send)
    time.sleep(0.05)

def read_from_fpga():
    return int.from_bytes(serial_port.read(), byteorder='big', signed=True)

def check_valid_operand(operand):
    try:
        value = int(operand)
        if -128 <= value <= 127:
            return True
        else:
            print("\nEl operando ingresado no es representable en 8 bits. Inténtelo nuevamente.")
            return False
    except (ValueError, OverflowError):
        print("\nEl operando ingresado no es válido o es muy grande. Inténtelo nuevamente.")
        return False

def ingresar_operacion():
    print("\nSeleccione la operación que desea realizar:")
    print("1. Suma (ADD)")
    print("2. Resta (SUB)")
    print("3. AND")
    print("4. OR")
    print("5. XOR")
    print("6. Desplazamiento a la derecha aritmético (SRA)")
    print("7. Desplazamiento a la derecha lógico (SRL)")
    print("8. NOR")

    while True:
        opcion = input("\nIngrese el número de la operación: ")
        if opcion.isdigit():
            opcion = int(opcion)
            if 1 <= opcion <= 8:
                return opcion
        print("\nOpción no válida. Ingrese un número válido.")

def ingresar_dato(mensaje):
    while True:
        data = input(f"\n{mensaje}\n>> ")
        if check_valid_operand(data):
            return data

signal.signal(signal.SIGINT, sigint_handler)

if __name__ == "__main__":
    clear_screen()
    print(format_title(" Programa de Interfaz UART con FPGA ", "", ""))
    
    puerto_serial = seleccionar_puerto()
    baudrate = ingresar_baudrate()
    serial_port = inicializar_puerto_serial(puerto_serial, baudrate)
    signal.signal(signal.SIGINT, sigint_handler)

    while True:
        clear_screen()
        print(format_title(" Programa de Interfaz UART con FPGA ", puerto_serial, baudrate))
        print("\nIngrese los operandos y la operación para la FPGA.")
        
        operacion = ingresar_operacion()

        op_code = {
            1: "ADD",
            2: "SUB",
            3: "AND",
            4: "OR",
            5: "XOR",
            6: "SRA",
            7: "SRL",
            8: "NOR"
        }[operacion]
        
        data_a = ingresar_dato("Operando A:")
        data_b = ingresar_dato("Operando B:")

        write_to_fpga(data_a)
        write_to_fpga(data_b)
        write_to_fpga(code_to_bin(op_code))

        resultado = read_from_fpga()
        
        print(format_separator())
        print(f"Resultado de {op_code}: {resultado}")
        print(format_separator())
        input("Presione Enter para continuar...")
