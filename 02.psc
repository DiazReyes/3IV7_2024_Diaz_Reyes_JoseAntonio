Algoritmo tiendita
	Definir producto como Texto
	Definir codigodeproducto, cantidad Como Entero
	Definir precio Como Real
	
	//tengo que crear menu de seleccion 
	
	Mientras opcion <> 5 Hacer
		Escribir  "1.- Ingresar un nuevo producto"
		Escribir  "2.- Actualizar producto "
		Escribir "3.- Consulta el inventario"
		Escribir "4.- Genera reporte "
		Escribir "5.- Salir"
		
		Leer opcion
		
		Segun opcion hacer
			caso 1:
				Escribir  "Ingresa el nombre del producto"
				Leer  producto
				Escribir "Ingresa el codigo del producto"
				Leer codigodeproducto
				Escribir "ingresa la cantidad"
				Leer cantidad
				Escribir "Ingrese el precio"
				Leer precio
			Caso 2:
				Escribir "Ingresa el codigo del producto a actualizar"
				Leer  codigodeproducto
				Escribir "Ingresa la nueva cantidad"
				Leer cantidad
			Caso 3:
				Escribir "Consultar inventarios"
				Escribir "nombre del producto", producto
				Escribir "nombre del codigo de el producto", codigodeproducto
				Escribir "nombre del precio", precio
				Escribir "nombre del cantidad", cantidad
			Caso 4:
				Escribir "habia una vez un patito que decia miaw miaw"
		FinSegun
		
	FinMientras
FinAlgoritmo
