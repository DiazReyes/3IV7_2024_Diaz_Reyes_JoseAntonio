Algoritmo conversionTemperaturas
    Definir fahrenheit, celsius, kelvin, rankine Como Real
    Definir opcion, continuar Como Caracter
	
    Repetir
        Escribir "Ingresa la temperatura en grados Fahrenheit: "
        Leer fahrenheit
		
        Escribir "Elige la conversión que deseas realizar:"
        Escribir "1. Grados Celsius"
        Escribir "2. Grados Kelvin"
        Escribir "3. Grados Rankine"
        Leer opcion
		
        Segun opcion Hacer
            Caso "1":
                celsius = (fahrenheit - 32) * 5 / 9
                Escribir fahrenheit, " grados Fahrenheit son ", celsius, " grados Celsius."
            Caso "2":
                kelvin = (fahrenheit - 32) * 5 / 9 + 273.15
                Escribir fahrenheit, " grados Fahrenheit son ", kelvin, " grados Kelvin."
            Caso "3":
                rankine = fahrenheit + 459.67
                Escribir fahrenheit, " grados Fahrenheit son ", rankine, " grados Rankine."
            De Otro Modo:
                Escribir "Opción no válida. Intenta de nuevo."
        FinSegun
		
        Escribir "¿Deseas realizar otra conversión? (S/N)"
        Leer continuar
    Hasta Que continuar = "N" O continuar = "n"
FinAlgoritmo
