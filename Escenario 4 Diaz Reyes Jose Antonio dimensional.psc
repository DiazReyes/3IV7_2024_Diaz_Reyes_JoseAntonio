Algoritmo asasa
	Escribir "De cuantas personas sera el listado"
	Leer n
	
	//Esta madre sirve porque dios asi lo quiso me apoye de lo que me dijo un amigo y de lo que chat gpt me dio la neta  se supone que esto usa algo asi c
	//como dimensiones pero la neta ni yo se como lo hice andaba medio dromido 
	
	Escribir "Cuantos años se analizaran"
	
	Leer na
	
	Dimension nacer[n]
	//colocaremos unidimensionales
	Dimension morir[n]
	// y bidimensionales
	Dimension añosaAnalizar[na]
	
	Para i <- 1 Hasta n Con Paso 1 Hacer
		
		Escribir "Introduce el año de nacimiento de la persona ", i
		
		Leer nacer[i]
		
		Escribir "Coloca el año de muerte de la persona ", i,  " (En caso de no haber muerto pon 0)"
		
		Leer morir[i]
		
	Fin Para
	
	Para i<- 1 Hasta na Con Paso 1 Hacer
		
		Escribir "Pon el año ", i, " que se analizara"
		Leer añosaAnalizar[i]
	Fin Para
	
	
	
	Dimension vivos[na, n]
	
	Para f <- 1 Hasta na Con Paso 1 Hacer
		
		Para c <- 1 Hasta n Con Paso 1 Hacer
			
			Si añosaAnalizar[f] <= morir[c] y añosaAnalizar[f] >= nacer[c] Entonces
				
				vivos[f, c] <- nacer[c]
				
			Fin Si
			
		Fin Para
		
	Fin Para
	
	Para c <- 1 Hasta na Con Paso 1 Hacer
		
		Escribir "En el año ", añosaAnalizar[c], " seguian vivos los nacidos en: "
		
		Para d <- 1 Hasta n Con Paso 1 Hacer
			
			Si vivos[c, d] <> 0 Entonces
				
				Escribir vivos[c, d]
				
			Fin Si
			
		Fin Para
		
	Fin Para
	
	
	Dimension edades[na, n]
	
	Para f <- 1 Hasta na Con Paso 1 Hacer
		Para c <- 1 Hasta n Con Paso 1 Hacer
			edades[f, c] <- añosaAnalizar[f] - nacer[c]
		Fin Para
	Fin Para
	
	Dimension joven[na, 1]
	
	Para f <- 1 Hasta na Con Paso 1 Hacer
		joven[f, 1] <- 999
	Fin Para
	
	Para f <- 1 Hasta na Con Paso 1 Hacer
		Para c <- 1 Hasta n Con Paso 1 Hacer
			Si edades[f, c] < joven[f, 1] y edades[f, c] >= 0 y vivos[f, c] <> 0 Entonces
				joven[f, 1] <- edades[f, c]
			Fin Si
		Fin Para
	Fin Para
	
	Escribir "Los mas jovenes de cada año son:"
	
	Para f <- 1 Hasta na Con Paso 1 Hacer
		Si joven[f, 1] = 999 Entonces
			Escribir añosaAnalizar[f], " No hay vivos"
		SiNo
			Escribir añosaAnalizar[f], ": ", joven[f, 1]
		Fin Si
		
	Fin Para
	
	
	Dimension viejo[na, 1]
	
	Para f <- 1 Hasta na Con Paso 1 Hacer
		viejo[f, 1] <- -1
	Fin Para
	
	Para f <- 1 Hasta na Con Paso 1 Hacer
		Para c <- 1 Hasta n Con Paso 1 Hacer
			Si edades[f, c] > viejo[f, 1] y edades[f, c] >= 0 y vivos[f, c] <> 0 Entonces
				viejo[f, 1] <- edades[f, c]
				
			Fin Si
			
		Fin Para
		
	Fin Para
	
	
	Escribir "Los mas viejos de cada año:"
	
	Para f <- 1 Hasta na Con Paso 1 Hacer
		Si viejo[f, 1] = -1 Entonces
			Escribir añosaAnalizar[f], " Nadie vivo"
		SiNo
			Escribir añosaAnalizar[f], ": ", viejo[f, 1]
		Fin Si
		
	
	Fin Para
	
FinAlgoritmo
