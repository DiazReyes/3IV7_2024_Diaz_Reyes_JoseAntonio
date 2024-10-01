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
		
		Escribir "Algoritmo de Gestión de Reservas de Hotel"
		
		Escribir "1. Registrar Reserva"
		
		Escribir "2. Cancelar Reserva"
		
		Escribir "3. Consultar Disponibilidad de habitaciones"
		
		
		
		
		
		
		Escribir "4. Consultar Porcentaje de uso de habitaciones"
		
		Escribir "5. Salir"
		
		Escribir "Elija una opción:"
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
                            Escribir "Reserva de la habitacion", habitacion, " del día ", dia_enter, " al día ", dia_salida
							
						Sino
							
							Escribir "Invalido es necesario que la fecha de salida sea superior a la fecha de entrada"
							
						Fin Si
						
					Sino
						
						Escribir "La habitación no esta disponible"
						
					Fin Si
					
					
					
				Sino
					
					Escribir "Número de habitación inválido"
                Fin Si
				
            Caso 2:
				
				Escribir "Coloque el número de habitación para cancelar su reserva (1-10):"
				
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
                    Escribir "Número de habitación inválido"
                Fin Si
				
            Caso 3:
                Escribir "Coloque la fecha de entrada deseada (día numérico):"
				
				
				
				Leer dia_reserva_entrada
				
				
				
				Escribir "Coloque la fecha de salida deseada  (día numérico):"
				
				
				
				Leer dia_reserva_salida
				
                Si dia_reserva_salida > dia_reserva_entrada Entonces
                    Escribir "Las habitaciones disponibles en las fechas solicitadas son:"
                    Para N = 1 Hasta 10 Hacer
                        Si Usadas[N] = Falso O (Fechakike[N] < dia_reserva_entrada O Fechasinicio[N] > dia_reserva_salida) Entonces
                            Escribir "Habitación ", N, " está disponible"
							
							
							
							
						Sino
                            Escribir "Habitación ", N, " está ocupada"
                        Fin Si
                    Fin Para
					
					
					
				Sino
                    Escribir "Error: La fecha de salida debe ser posterior a la fecha de entrada."
                Fin Si
				
            Caso 4:
                Escribir "Porcentaje de ocupación del hotel:"
                Escribir (ocupadas_total / 10) * 100, "% de las habitaciones están ocupadas"
				
				
				
            Caso 5:
                Escribir "Saliendo ///"
				
            De Otro Modo:
                Escribir "Opción no válida"
				
				
		Fin Segun
		
		
		
	Fin Mientras
FinAlgoritmo
