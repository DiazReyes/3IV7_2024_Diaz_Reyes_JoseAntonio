Algoritmo primos
	Escribir "Diseñe un algoritmo para determinar si un numero es primo"
	Leer  numerito
	J=2
	s=0
	
	Mientras  J <= numerito/2 Hacer
		si numerito/J = 0 Entonces
			
			s = s+1
			Escribir "Valor de s :" , s
			J = J+1
			Escribir "Valor de J :" , J
		FinSi
	FinMientras
	
	si s = 0 Entonces
		Escribir  "Es primo "
	SiNo
		Escribir  "No es primo"
	FinSi
	
FinAlgoritmo
