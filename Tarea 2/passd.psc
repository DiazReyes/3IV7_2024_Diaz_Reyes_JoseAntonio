Algoritmo passd
	Definir pies, pulgadas, yardas, centimetros, metros Como Real
    Definir usos Como Entero
    
    
    Escribir "Ingresa la medida en pies: "
    Leer pies
    
    
    Escribir "Elige la conversión que deseas realizar:"
    Escribir "1. Pulgadas"
    Escribir "2. Yardas"
    Escribir "3. Centímetros"
    Escribir "4. Metros"
    Leer usos
    
    
    Segun usos Hacer
        Caso 1:
            pulgadas = pies * 12
            Escribir pies, " pies son ", pulgadas, " pulgadas."
        Caso 2:
            yardas = pies / 3
            Escribir pies, " pies son ", yardas, " yardas."
        Caso 3:
            centimetros = pies * 12 * 2.54
            Escribir pies, " pies son ", centimetros, " centímetros."
        Caso 4:
            metros = pies * 12 * 2.54 / 100
            Escribir pies, " pies son ", metros, " metros."
        De Otro Modo:
            Escribir "Opción no válida. Intenta de nuevo."
    FinSegun
FinAlgoritmo
