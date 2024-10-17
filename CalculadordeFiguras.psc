// crearemos  un rograma para calcular areas y perimetros 
// pero con el uso de subprocesos
// vamos a calcular el subproceso del rectangulo
SubProceso  Rectangulo(base,altura)
	area <- base*altura
	perimetro <- 2*(base+altura)
	Escribir 'El area del resctangulo es : ', area
	Escribir 'El perimetro del rectangulo es : ', perimetro
FinSubProceso


SubProceso  Triangulo(base,altura,lado1,lado2,lado3)
	area <- base*altura
	perimetro <- lado1+lado2+lado3
	Escribir 'El area del resctangulo es : ', area
	Escribir 'El perimetro del rectangulo es : ', perimetro
FinSubProceso


SubProceso CalcularPentagono(lado, apotema)

	perimetro = 5 * lado
	apotema = lado / (2 * Tan(36))
	area = (perimetro * apotema) / 2
	Escribir "Pentágono - Perímetro: ", perimetro, ", Área: ", area
FinSubProceso


SubProceso CalcularHexagono(lado, apotema)
	perimetro = 6 * lado
	apotema = (lado * Raiz(3)) / 2
	area = (perimetro * apotema) / 2
	Escribir "Hexágono - Perímetro: ", perimetro, ", Área: ", area
FinSubProceso


SubProceso CalcularHeptagono(lado, apotema)
	perimetro = 7 * lado
	apotema = lado / (2 * Tan(25.71))
	area = (perimetro * apotema) / 2
	Escribir "Heptágono - Perímetro: ", perimetro, ", Área: ", area
FinSubProceso


SubProceso CalcularOctagono(lado, apotema)
	perimetro = 8 * lado
	apotema = lado / (2 * Tan(22.5))
	area = (perimetro * apotema) / 2
	Escribir "Octágono - Perímetro: ", perimetro, ", Área: ", area
FinSubProceso

SubProceso CalcularEneagono(lado, eneagono)
	Definir perimetro, area, apotema Como Real
	perimetro = 9 * lado
	apotema = lado / (2 * Tan(20))
	area = (perimetro * apotema) / 2
	Escribir "Eneágono - Perímetro: ", perimetro, ", Área: ", area
FinSubProceso


SubProceso CalcularDecagono(lado, apotema)
	
	perimetro = 10 * lado
	apotema = lado / (2 * Tan(18))
	area = (perimetro * apotema) / 2
	Escribir "Decágono - Perímetro: ", perimetro, ", Área: ", area
    FinSubProceso

Algoritmo CalculadordeFiguras
	Definir opcion Como Cadena
	Definir base, altura, lado1, lado2, lado3, apotema Como Real
	// vamos a crear el menu 
	Escribir 'Selecciona una opcion :'
	Escribir 'A Area y peligro del Rectangulo'
	Escribir 'B Area y Perimetro del triangulo'
	Escribir 'C Area y Perimetro del pentagono'
	Escribir 'D Area y Perimetro del hexagono'
	Escribir 'E Area y Perimetro del heptagono'
	Escribir 'F Area y Perimetro del Octagono'
	Escribir 'G Area y Perimetro del Eneagono'
	Escribir 'H Area y Perimetro del Decagono'
	Leer opcion
	Según opcion Hacer
		'A':
			Escribir 'Ingresa la base de el rectangulo'
			Leer base
			Escribir 'Ingresa la altura del rectangulo'
			Leer altura
			Rectangulo(base,altura)
		'B':
			Escribir 'Ingresa la base de el Triangulo'
			Leer base
			Escribir 'Ingresa la altura del Triangulo'
			Leer altura
			Escribir 'Ingresa la altura el lado 1'
			Leer lado1
			Escribir 'Ingresa la altura el lado 2'
			Leer lado2
			Escribir 'Ingresa la altura el lado 3'
			Leer lado3
			Triangulo(base,altura,lado1,lado2,lado3)
		"C":
			Escribir "Ingresa el lado de el pentagono regular"
			leer lado
			Escribir "Ingresa el apotema de el pentagono regular"
			Leer apotema
			CalcularPentagono(lado, apotema)
			"D":
			Escribir "Ingresa el lado de el hexagono regular"
			leer lado
			Escribir "Ingresa el apotema de el hexagono regular"
			Leer apotema
			CalcularHexagono(lado, apotema)
		"E":
			Escribir "Ingresa el lado de el heptagono"
			leer lado
			Escribir "Ingresa el apotema de el heptagono"
			Leer apotema
			CalcularHeptagono(lado, apotema)
		"F":
			Escribir "Ingresa el lado de el octagono"
			leer lado
			Escribir "Ingresa el apotema de el octagono"
			Leer apotema
			CalcularOctagono(lado, apotema)
		"G":
			Escribir "Ingresa el lado de el eneagono"
			leer lado
			Escribir "Ingresa el apotema de el eneagono"
			Leer apotema
			CalcularEneagono(lado, apotema)
		"H":
			Escribir "Ingresa el lado de el Decagono"
			leer lado
			Escribir "Ingresa el apotema de el decagono"
			Leer apotema
			CalcularDecagono(lado, apotema)
		De Otro Modo:
			Escribir 'Opcion no valida'
	FinSegún
FinAlgoritmo

Funcion SinTitulo
	
FinFuncion
