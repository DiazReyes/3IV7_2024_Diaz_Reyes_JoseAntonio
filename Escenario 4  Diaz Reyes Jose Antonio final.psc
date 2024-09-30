Algoritmo asasas
	// Lectura de la cantidad de personas N y de preguntas Q
    Escribir "Ingresa el número de personas (N) y de preguntas (Q):"
    Leer N, Q
	
    // Declaración de variables
    Definir nacimiento Como Entero
    Definir muerte Como Entero
    Definir anioConsulta Como Entero
    Definir edad Como Entero
    Definir vivos Como Entero
    Definir masJoven Como Entero
    Definir masAnciano Como Entero
    Definir edadJoven Como Entero
    Definir edadAnciano Como Entero
	
    // Inicializar valores extremos
    masJoven <- 1000000000  // Iniciamos con un valor muy alto
    masAnciano <- 0  // Iniciamos con 0, porque los años son positivos
	
    // Almacenamos los años de nacimiento y muerte de las N personas
    Para i <- 1 Hasta N Con Paso 1 Hacer
        Escribir "Ingresa el año de nacimiento y fallecimiento de la persona ", i, ":"
        Leer nacimiento, muerte
		
        // Determinar la edad de la persona actual
        edadJoven <- nacimiento
        edadAnciano <- muerte
		
        // Verificamos si la persona es la más joven o la más anciana
        Si edadJoven < masJoven Entonces
            masJoven <- edadJoven
        FinSi
		
        Si edadAnciano > masAnciano Entonces
            masAnciano <- edadAnciano
        FinSi
		
        // Procesar cada pregunta
        Para j <- 1 Hasta Q Con Paso 1 Hacer
            Escribir "Ingresa el año de la pregunta ", j, ":"
            Leer anioConsulta
            
            // Reiniciamos el contador de vivos por cada año consultado
            vivos <- 0
            
            // Verificamos si la persona estaba viva en el año consultado
            Si anioConsulta >= nacimiento y anioConsulta <= muerte Entonces
                // Calcular cuántos años tenía la persona en el año consultado
                edad <- anioConsulta - nacimiento
                
                // Contamos a la persona como viva
                vivos <- vivos + 1
                
                // Actualizamos el valor de la persona más joven si corresponde
                Si edad < masJoven Entonces
                    masJoven <- edad
                FinSi
                
                // Actualizamos el valor de la persona más anciana si corresponde
                Si edad > masAnciano Entonces
                    masAnciano <- edad
                FinSi
            FinSi
            
        FinPara
    FinPara
	
    // Mostramos los resultados para la consulta
    Para j <- 1 Hasta Q Con Paso 1 Hacer
        Escribir "En el año ", anioConsulta, " había ", vivos, " personas vivas."
        Si vivos > 0 Entonces
            Escribir "La persona más joven tenía ", masJoven, " años."
            Escribir "La persona más anciana tenía ", masAnciano, " años."
        Sino
            Escribir "No había personas vivas en ese año."
        FinSi
    FinPara
FinAlgoritmo
