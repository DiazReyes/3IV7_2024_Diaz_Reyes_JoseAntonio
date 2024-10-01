Algoritmo asd
    Definir horadeentrada, minutodeentrada, segundodeentrada, horadesalida, minutodesalida, segundodesalida Como Real
    Definir totalHoras, totalMiinutos, totalSegundos, totalminutos Como Real
    Definir totaldecobro Como Real
    Definir fracciones15min, minutosrestantes, segundosrestantes Como Entero
	
    // Entrada de datos con validaciones
    Repetir
        Escribir "Ingrese la hora de entrada (formato de 24 horas, máx. 23)"
        Leer horadeentrada
        Si horadeentrada > 23 o horadeentrada < 0 Entonces
            Escribir "La hora ingresada no es válida."
        FinSi
    Hasta Que horadeentrada <= 23 o horadeentrada >= 1
	
    Repetir
        Escribir "Ingrese los minutos de entrada (formato 0 - 59)"
        Leer minutodeentrada
        Si minutodeentrada > 59 o minutodeentrada < 0 Entonces
            Escribir "Los minutos ingresados no son válidos."
        FinSi
    Hasta Que minutodeentrada <= 59  o minutodeentrada >= 1
	
    Repetir
        Escribir "Ingrese los segundos de entrada (formato 0 - 59)"
        Leer segundodeentrada
        Si segundodeentrada > 59 o segundodeentrada < 0 Entonces
            Escribir "Los segundos ingresados no son válidos."
        FinSi
    Hasta Que segundodeentrada <= 59 o segundodeentrada >= 1
	
    Repetir
        Escribir "Ingrese la hora de salida (formato de 24 horas, máx. 23)"
        Leer horadesalida
        Si horadesalida > 23 o horadesalida < 0 Entonces
            Escribir "La hora ingresada no es válida."
        FinSi
    Hasta Que horadesalida <= 23 o horadesalida >= 1
	
    Repetir
        Escribir "Ingrese los minutos de salida (formato 0 - 59)"
        Leer minutodesalida
        Si minutodesalida > 59 o minutodesalida < 0  Entonces
            Escribir "Los minutos ingresados no son válidos."
        FinSi
    Hasta Que minutodesalida <= 59 o minutodesalida >= 1
	
    Repetir
        Escribir "Ingrese los segundos de salida (formato 0 - 59)"
        Leer segundodesalida
        Si segundodesalida > 59 o segundodesalida < 0 Entonces
            Escribir "Los segundos ingresados no son válidos."
        FinSi
    Hasta Que segundodesalida <= 59 o segundodesalida >= 1
	
    // Proceso
    // Calcular el tiempo total en horas, minutos y segundos
    totalHoras = horadesalida - horadeentrada
    totalMiinutos = minutodesalida - minutodeentrada
    totalSegundos = segundodesalida - segundodeentrada
	
    // Ajustar los minutos si los segundos de salida son menores a los de entrada
    Si totalSegundos < 0 Entonces
        totalSegundos = totalSegundos + 60
        totalMiinutos = totalMiinutos - 1
    FinSi
	
    // Ajustar las horas si los minutos de salida son menores a los de entrada
    Si totalMinutos < 0 Entonces
        totalMiinutos = totalMiinutos + 60
        totalHoras = totalHoras - 1
    FinSi
	
    // Convertir todo a minutos
    totalminutos = (totalHoras * 60) + totalMiinutos
    segundosrestantes = totalSegundos
	
    // Calcular el cobro
    totaldecobro = 0
	
    // Cobrar por horas completas
    Si totalminutos >= 60 Entonces
        totaldecobro = totaldecobro + (Trunc(totalminutos / 60)) * 15
    FinSi
	
    // Calcular fracciones de 15 minutos
    minutosrestantes = totalminutos % 60
    Si minutosrestantes > 0 Entonces
        fracciones15min = Trunc(minutosrestantes / 15)
        Si fracciones15min > 0 Entonces
            totaldecobro = totaldecobro + fracciones15min * 6
        FinSi
    FinSi
	
    // Cobrar si quedan segundos restantes (cobrar 1 peso por cada 15 segundos)
    Si segundosrestantes > 0 Entonces
        totaldecobro = totaldecobro + (Trunc(segundosrestantes / 15)) * 1
    FinSi
	
    // Mostrar el resultado
    Escribir "El total a pagar es de:", totaldecobro, "pesos"
    
FinAlgoritmo

