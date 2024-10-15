Algoritmo ContarPositivosYNegativos
    Definir num, positivos, negativos, n, i Como Entero
    Definir opcion Como Caracter
    
    Repetir
        positivos <- 0
        negativos <- 0
        
        Escribir "Introduce la cantidad de números a evaluar: "
        Leer n
        
        Para i <- 1 Hasta n Con Paso 1 Hacer
            Escribir "Introduce un número: "
            Leer num
            Si num > 0 Entonces
                positivos <- positivos + 1
			SiNo
				Si num < 0 Entonces
					negativos <- negativos + 1
					fin si
            FinSi
        FinPara
        
        Escribir "Cantidad de números positivos: ", positivos
        Escribir "Cantidad de números negativos: ", negativos
        
        Escribir "¿Deseas repetir el proceso? (S/N)"
        Leer opcion
    Hasta Que opcion = "N" O opcion = "n"
FinAlgoritmo

