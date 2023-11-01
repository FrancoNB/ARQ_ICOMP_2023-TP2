import serial
import time
import sys

portCOM = sys.argv[1]

ser = serial.Serial(
    port=portCOM,  # Configurar con el puerto
    baudrate=19200,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS
)

ser.timeout=None

# limpiamos las pilas
ser.flushInput()
ser.flushOutput()

while True:
    val_a = input("Ingrese el valor de A: ")
    if not val_a.isdigit():
        print("Valor de A no es un entero válido.")
        continue

    val_a_bytes = int(val_a).to_bytes(1, 'big')
    ser.write(val_a_bytes)
    print("Sent A: %d" % int.from_bytes(val_a_bytes, byteorder='big'))

    val_b = input("Ingrese el valor de B: ")
    if not val_b.isdigit():
        print("Valor de B no es un entero válido.")
        continue

    val_b_bytes = int(val_b).to_bytes(1, 'big')
    ser.write(val_b_bytes)
    print("Sent B: %d" % int.from_bytes(val_b_bytes, byteorder='big'))

    print("(type 'exit' to quit)\n")
    print("Seleccione la operacion que desea realizar: ")
    print("1) SUMA=A+B\n2) RESTA=A-B\n3) AND=(A)&(B)")
    print("4) OR=(A)OR(B)\n5) XOR=(A)XOR(B)\n6) NOR=(A)NOR(B)")
    print("7) SRA=(A)>>>(B)\n8) SRL=(A)>>(B)")
    operation = input()
    if operation == 'exit':
        if ser.isOpen():
            ser.close()
        break
    
    if operation == '1':   # Suma
        op_val = 0b100000
    elif operation == '2': # Resta
        op_val = 0b100010
    elif operation == '3': # And
        op_val = 0b100100
    elif operation == '4': # Or
        op_val = 0b100101
    elif operation == '5': # Xor
        op_val = 0b100110
    elif operation == '6': # Nor
        op_val = 0b100111
    elif operation == '7': # Sra
        op_val = 0b000011
    elif operation == '8': # Srl
        op_val = 0b000010
    else:
        print("Opcion invalida")
        op_val = 0

    ser.write(op_val.to_bytes(1, 'big'))
    print("Sent Operation: %d" % int.from_bytes(op_val.to_bytes(1, 'big'), byteorder='big'))

    # Read the response from the serial device
    while ser.inWaiting() > 0:
        readData = ser.read()
        out_op = int.from_bytes(readData,byteorder='big')
        print (">>",out_op)
