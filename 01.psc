Algoritmo CobrodeEstacionamiento
	Definir horadeentrada , minutodeentrada , horadesalida,minutodesalida Como Real
	Definir totalHoras , totalminutos , minutostotalesdelacuenta  Como Real
	Definir totaldecobro Como Real
	//entrada de datos
	Escribir "ingrese la hora de entrada(formato de 24 horas)"
	Leer horadeentrada
	Escribir "ingrese los minutos de entrada(formato de 0 - 59)"
	Leer minutodeentrada
	Escribir "ingrese la hora de salida(formato de 24 horas)"
	Leer horadesalida
	Escribir "ingrese los minutos de salida(formato de 0 - 59)"
	Leer minutodesalida
	
	//Proceso
	//calcular el tiempo total en minutos
	
	totalHoras = horadesalida-horadeentrada
	totalminutos=minutodesalida - minutodeentrada
	
	//tengo que empezar a evaluar los casos
	
	//si los minutos de salida son menores a los de entrada 
	//hay que ajustar la hora y los minutodesalida
	si totalminutos < 0 Entonces
		totalminutos = totalminutos+60
		//totalminutos += 60
		totalHoras = totalHoras -1
	FinSi
	
	//convertir todo a minutos
	
	totalminutos = (totalHoras*60)+totalminutos
	
	//vamos a calcular el cobro
	totaldecobro = 0
	//calcular el cobro por la hora completa
	
	si totalminutos >= 60 Entonces
		totaldecobro = totaldecobro + (totalminutos/60)*15

	FinSi
	
	//calcular el cobro de cada fraccion
	
	minutosreestantes = totalminutos%60
	si minutosreestantes > 0 Entonces
		fracciones15min = minutosreestantes // aqui se obtiene los 15
		//cobrar cada fraccion
		totaldecobro = totaldecobro + fracciones15min * 6 
		
	FinSi
	
	// mostrar el resultado
	
	Escribir "El total a pagar es de:", totaldecobro ,"pesos" 

	
	
	

	
FinAlgoritmo
