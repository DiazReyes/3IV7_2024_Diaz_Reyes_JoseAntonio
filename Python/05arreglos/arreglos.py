#vamos a crear una funcion que se encargue de sumar 2 arreglos

def sumar_arreglos(arreglo1, arreglo2):
    if len(arreglo1) != len(arreglo2):
        print("Error: los arreglos deben de tener la misma longitud")
        return None
    else:
        suma=[]
        for i in range(len(arreglo1)):
            suma.append(arreglo1[i])
            return suma
        
# programa principal
11.
# primero definimos los arrglos
arreglo1 = []
arreglo2 = []

n = int(input("Introduce el tamaño de los arreglos"))

print("Introduice los elementos de el primer arreglo")
for i in range(n):
    num = float(input("ingresa el elemento ",{i+1}, ": "))
    arreglo1.append(num)

print("Introduice los elementos de el segundo arreglo")
for i in range(n):
    num = float(input("ingresa el elemento ",{i+1}, ": "))
    arreglo2.append(num)

    resultado = sumar_arreglos(arreglo1, arreglo2)     
    if resultado is not None:
        print("la suma de los 2 arreglos es: ", resultado)    
 


