Algoritmo primo
	Definir n, divisor Como Entero
	Definir esPrimo Como Lógico
	Escribir 'Ingresa un número: '
	Leer n
	Si n<=1 Entonces
		Escribir 'No primo'
	SiNo
		Si n=2 Entonces
			Escribir 'Primo'
		SiNo
			Si n MOD 2=0 Entonces
				Escribir 'No primo'
			SiNo
				divisor <- 3
				esPrimo <- Verdadero
				Mientras divisor*divisor<=n Hacer
					Si n MOD divisor=0 Entonces
						esPrimo <- Falso
					FinSi
					divisor <- divisor+2
				FinMientras
				Si esPrimo Entonces
					Escribir 'Primo'
				SiNo
					Escribir 'No primo'
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
