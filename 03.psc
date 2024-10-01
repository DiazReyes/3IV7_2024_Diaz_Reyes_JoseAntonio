Algoritmo SistemaReservasHotel
    Dimension  Fechasinicio[10], Fechakike[10],Usadas[10]
    Definir opcion, habitacion, dia_reserva_entrada, dia_reserva_salida, Usadas_total, dia_enter, dia_salida Como Entero
    ocupadas_total = 0
	
    Para i = 1 Hasta 10 Hacer
        Usadas[i] = Falso
        Fechasinicio[i] = 0
        Fechakike[i] = 0
    Fin Para
	
	
	
	
	
	
    Mientras opcion <> 5 Hacer
		
		Escribir "Algoritmo de Gesti�n de Reservas de Hotel"
		
		Escribir "1. Registrar Reserva"
		
		Escribir "2. Cancelar Reserva"
		
		Escribir "3. Consultar Disponibilidad de habitaciones"
		
		
		
		
		
		
		Escribir "4. Consultar Porcentaje de uso de habitaciones"
		
		Escribir "5. Salir"
		
		Escribir "Elija una opci�n:"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                Escribir "Ingrese que habitacion desea  (1-10):"
                Leer habitacion
                Si habitacion >= 1 Y habitacion <= 10 Entonces
                    Si Usadas[habitacion] = Falso Entonces
                        Escribir "Ingrese la fecha de entrada (ingresar dia de  1 a 365):"
                        Leer dia_enter
                        Escribir "Ingrese la fecha de salida (ingresar dia de 1 a 365):"
                        Leer dia_salida
						
                        Si dia_salida > dia_enter Entonces
                            Usadas[habitacion] = Verdadero
                            Fechasinicio[habitacion] = dia_enter
							Fechakike[habitacion] = dia_salida
                            Usadas_total = Usadas_total + 1
                            Escribir "Reserva de la habitacion", habitacion, " del d�a ", dia_enter, " al d�a ", dia_salida
							
						Sino
							
							Escribir "Invalido es necesario que la fecha de salida sea superior a la fecha de entrada"
							
						Fin Si
						
					Sino
						
						Escribir "La habitaci�n no esta disponible"
						
					Fin Si
					
					
					
				Sino
					
					Escribir "N�mero de habitaci�n inv�lido"
                Fin Si
				
            Caso 2:
				
				Escribir "Coloque el n�mero de habitaci�n para cancelar su reserva (1-10):"
				
				Leer habitacion
				
				
				Si habitacion >= 1 Y habitacion <= 10 Entonces
					
					
					
					
					Si Usadas[habitacion] = Verdadero Entonces
						
						Usadas[habitacion] = Falso
                        Fechasinicio[habitacion] = 0
						
						
						
						Fechakike[habitacion] = 0
						Usadas_total = Usadas_total - 1
                        Escribir "Su reserva en la habitacion ", habitacion "Fue cancelada"
                    Sino
                        Escribir "No se pujede cancelar en esta habitacion porque no esta ocupada"
                    Fin Si
                Sino
                    Escribir "N�mero de habitaci�n inv�lido"
                Fin Si
				
            Caso 3:
                Escribir "Coloque la fecha de entrada deseada (d�a num�rico):"
				
				
				
				Leer dia_reserva_entrada
				
				
				
				Escribir "Coloque la fecha de salida deseada  (d�a num�rico):"
				
				
				
				Leer dia_reserva_salida
				
                Si dia_reserva_salida > dia_reserva_entrada Entonces
                    Escribir "Las habitaciones disponibles en las fechas solicitadas son:"
                    Para N = 1 Hasta 10 Hacer
                        Si Usadas[N] = Falso O (Fechakike[N] < dia_reserva_entrada O Fechasinicio[N] > dia_reserva_salida) Entonces
                            Escribir "Habitaci�n ", N, " est� disponible"
							
							
							
							
						Sino
                            Escribir "Habitaci�n ", N, " est� ocupada"
                        Fin Si
                    Fin Para
					
					
					
				Sino
                    Escribir "Error: La fecha de salida debe ser posterior a la fecha de entrada."
                Fin Si
				
            Caso 4:
                Escribir "Porcentaje de ocupaci�n del hotel:"
                Escribir (ocupadas_total / 10) * 100, "% de las habitaciones est�n ocupadas"
				
				
				
            Caso 5:
                Escribir "Saliendo ///"
				
            De Otro Modo:
                Escribir "Opci�n no v�lida"
				
				
		Fin Segun
		
		
		
	Fin Mientras
FinAlgoritmo
