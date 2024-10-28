
#def sumar_paginas(paginas):
    #caso base : si la lista esta vacia , devuelve 0
    #if not paginas:
   #     return 0
    
    # Suma el primer elemento y llama recursivamente con el resto de la lista 
    #return paginas[0]+sumar_paginas(paginas[1:])

    
  #ejemplos de uso
    
#libros=[200,250,450,120]#numero de paginas de cada libro
#total_paginas=sumar_paginas(libros)
#print("El total de paginas es:{total_paginas}")

#def factorial(n):
    #caso base : el factorial de 0 o 1 es 1
    #if n == 0 or n == 1:
   #     return 1
    #paso recursivo n * factorial(n-1)
  #  else:
 #       return n*factorial(n-1)
#numero = int(input("introduce un numero para calcular su factorial"))
#resultado = factorial(numero)
#print(f"El resultado es {numero} es : {resultado}")

def fibonacci(n): 

    # Casos base 

    if n == 0: 

        return 0 

    elif n == 1: 

        return 1 

    # Paso recursivo 

    else: 

        return fibonacci(n - 1) + fibonacci(n - 2) 

  

# Prueba de la función 

n = int(input("Introduce un número para calcular el Fibonacci: ")) 

print(f"El Fibonacci de {n} es: {fibonacci(n)}") 
