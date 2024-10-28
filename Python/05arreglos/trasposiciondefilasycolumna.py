def ingresar_matriz(tamano):
    matriz = []
    print(f"Introduce los valores de la matriz {tamano} x {tamano}")
    for i in range(tamano):
        fila = []
        for j in range(tamano):
            valor = float(input(f"Elemento [{i + 1}][{j + 1}]: "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

def transponer_matriz(matriz):
    matriz_transpuesta = []
    for i in range(len(matriz)):
        fila = []
        for j in range(len(matriz)):
            fila.append(matriz[j][i])
        matriz_transpuesta.append(fila)
    return matriz_transpuesta

def imprimir_matriz(matriz):
    for fila in matriz:
        print(fila)

# Programa principal
tamano = int(input("Ingrese el tamaño de la matriz (3 o 5): "))
if tamano == 3 or tamano == 5:
    matriz = ingresar_matriz(tamano)
    print("Matriz original:")
    imprimir_matriz(matriz)
    matriz_transpuesta = transponer_matriz(matriz)
    print("Matriz transpuesta:")
    imprimir_matriz(matriz_transpuesta)
else:
    print("Tamaño no válido. Por favor, ingrese 3 o 5.")
 