def decimal_a_binario(decimal):
    return bin(decimal).replace("0b", "")

def binario_a_decimal(binario):
    return int(binario, 2)

def menu():
    print("Elige una opción:")
    print("1. Convertir de decimal a binario")
    print("2. Convertir de binario a decimal")
    opcion = input("Ingresa la opción (1 o 2): ")
    
    if opcion == "1":

        numero_decimal = int(input("Ingresa un número decimal: "))

        print(f"El número decimal {numero_decimal} en binario es {decimal_a_binario(numero_decimal)}")
    elif opcion == "2":

        numero_binario = input("Ingresa un número binario: ")

        print(f"El número binario {numero_binario} en decimal es {binario_a_decimal(numero_binario)}")
    else:
        print("Opción no válida. Por favor, elige 1 o 2.")


menu()
