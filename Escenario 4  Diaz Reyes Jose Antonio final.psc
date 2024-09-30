Algoritmo asasas
	
    Escribir "Ingresa el número de personas (N) y de preguntas (Q):"
    Leer N, Q
	
    
    Definir nacimiento Como Entero
    Definir muerte Como Entero
    Definir anioConsulta Como Entero
    Definir edad Como Entero
    Definir vivos Como Entero
    Definir masJoven Como Entero
    Definir masAnciano Como Entero
    Definir edadJoven Como Entero
    Definir edadAnciano Como Entero
	
    
    masJoven <- 1000000000  
    masAnciano <- 0  
	
    
    Para i <- 1 Hasta N Con Paso 1 Hacer
        Escribir "Ingresa el año de nacimiento y fallecimiento de la persona ", i, ":"
        Leer nacimiento, muerte
		
        
        edadJoven <- nacimiento
        edadAnciano <- muerte
		
        
        Si edadJoven < masJoven Entonces
            masJoven <- edadJoven
        FinSi
		
        Si edadAnciano > masAnciano Entonces
            masAnciano <- edadAnciano
        FinSi
		
      
        Para j <- 1 Hasta Q Con Paso 1 Hacer
            Escribir "Ingresa el año de la pregunta ", j, ":"
            Leer anioConsulta
            
            
            vivos <- 0
            
            
            Si anioConsulta >= nacimiento y anioConsulta <= muerte Entonces
                
                edad <- anioConsulta - nacimiento
                
                
                vivos <- vivos + 1
                
                
                Si edad < masJoven Entonces
                    masJoven <- edad
                FinSi
                
               
                Si edad > masAnciano Entonces
                    masAnciano <- edad
                FinSi
            FinSi
            
        FinPara
    FinPara
	

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
