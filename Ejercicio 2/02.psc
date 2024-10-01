Algoritmo Tienda
	
	Definir producto como Texto
	Definir codigo, cantidad Como Entero
	Definir precio Como Real
	
	Mientras opcion <> 5 Hacer
		Escribir "1 -  Ingresa un nuevo producto:"
		Escribir "2 -  Actualiza un prodcuto"
		Escribir "3 -  Consulta los productos"
		Escribir "4 -  Generar Reporte"
		Escribir "5 -  Salir"
		
		Leer opcion
		
		Segun opcion Hacer
			Caso 1:
				Escribir "Ingresa el nombre del producto"
				Leer producto
				Escribir "Ingresa el código del producto"
				Leer codigoproducto
				Escribir "Ingresa la cantidad"
				Leer cantidad
				Escribir "Ingresa su precio"
				Leer precio
				
			Caso 2:
				Escribir "Ingresa el código del producto a actualizar"
				Leer codigo
				Escribir "Ingresa la nueva cantidad"
				Leer cantidad		
			Caso 3:
				Escribir "Consultar Inventario"
				Escribir "Nombre del producto: " producto
				Escribir "Código del producto: " codigo
				Escribir "Cantidad del producto: " cantidad
				Escribir "Precio del producto: " precio
			Caso 4:
				Escribir "Se vendieron el día de hoy 23 de septiembre de 2024 400 unidades del producto " producto
			
		Fin Segun
	Fin Mientras
	
FinAlgoritmo
