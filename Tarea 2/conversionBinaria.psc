Algoritmo conversionBinaria
	definir num, cociente Como Entero
	Definir binario Como Texto
	
	//el binario lo tengo que concatenar 
	binario = ""
	Escribir "Ingresa el numero que deseas convertir "
	Leer num
	
	Si num >= 0 Entonces
		Mientras  num > 0  Hacer
			residuo = num%2
			//tengo que ir al binario
			nuevobinario <- ConvertirATexto(residuo) 
			binario = nuevobinario + binario
			num = Trunc(num/2)
		FinMientras
		si binario=""
			binario="0"
	
		
		FinSi
		Escribir "El numero binario es: ", binario
	FinSi
	
	
	
FinAlgoritmo
