Algoritmo CalcularFormulaGeneral
    Definir a, b, c, discriminante, x1, x2, parteReal, parteImaginaria Como Real
	
    Escribir "Introduce el coeficiente a: "
    Leer a
    Escribir "Introduce el coeficiente b: "
    Leer b
    Escribir "Introduce el coeficiente c: "
    Leer c
	
    discriminante <- b^2 - 4*a*c
	
    Si discriminante >= 0 Entonces
        x1 <- (-b + Raiz(discriminante)) / (2*a)
        x2 <- (-b - Raiz(discriminante)) / (2*a)
        Escribir "Las soluciones reales son: x1 = ", x1, " y x2 = ", x2
    SiNo
        Escribir "Solución no admisible (números imaginarios)"
    FinSi
FinAlgoritmo