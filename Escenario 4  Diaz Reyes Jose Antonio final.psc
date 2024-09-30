Algoritmo asasas
	// Lectura de la cantidad de personas N y de preguntas Q
    Escribir "Ingresa el n�mero de personas (N) y de preguntas (Q):"
    Leer N, Q
	
    // Declaraci�n de variables
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
    masAnciano <- 0  // Iniciamos con 0, porque los a�os son positivos
	
    // Almacenamos los a�os de nacimiento y muerte de las N personas
    Para i <- 1 Hasta N Con Paso 1 Hacer
        Escribir "Ingresa el a�o de nacimiento y fallecimiento de la persona ", i, ":"
        Leer nacimiento, muerte
		
        // Determinar la edad de la persona actual
        edadJoven <- nacimiento
        edadAnciano <- muerte
		
        // Verificamos si la persona es la m�s joven o la m�s anciana
        Si edadJoven < masJoven Entonces
            masJoven <- edadJoven
        FinSi
		
        Si edadAnciano > masAnciano Entonces
            masAnciano <- edadAnciano
        FinSi
		
        // Procesar cada pregunta
        Para j <- 1 Hasta Q Con Paso 1 Hacer
            Escribir "Ingresa el a�o de la pregunta ", j, ":"
            Leer anioConsulta
            
            // Reiniciamos el contador de vivos por cada a�o consultado
            vivos <- 0
            
            // Verificamos si la persona estaba viva en el a�o consultado
            Si anioConsulta >= nacimiento y anioConsulta <= muerte Entonces
                // Calcular cu�ntos a�os ten�a la persona en el a�o consultado
                edad <- anioConsulta - nacimiento
                
                // Contamos a la persona como viva
                vivos <- vivos + 1
                
                // Actualizamos el valor de la persona m�s joven si corresponde
                Si edad < masJoven Entonces
                    masJoven <- edad
                FinSi
                
                // Actualizamos el valor de la persona m�s anciana si corresponde
                Si edad > masAnciano Entonces
                    masAnciano <- edad
                FinSi
            FinSi
            
        FinPara
    FinPara
	
    // Mostramos los resultados para la consulta
    Para j <- 1 Hasta Q Con Paso 1 Hacer
        Escribir "En el a�o ", anioConsulta, " hab�a ", vivos, " personas vivas."
        Si vivos > 0 Entonces
            Escribir "La persona m�s joven ten�a ", masJoven, " a�os."
            Escribir "La persona m�s anciana ten�a ", masAnciano, " a�os."
        Sino
            Escribir "No hab�a personas vivas en ese a�o."
        FinSi
    FinPara
FinAlgoritmo
