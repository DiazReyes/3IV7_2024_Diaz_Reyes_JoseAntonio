Algoritmo asasas
	
    Escribir "Ingresa el n�mero de personas (N) y de preguntas (Q):"
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
        Escribir "Ingresa el a�o de nacimiento y fallecimiento de la persona ", i, ":"
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
            Escribir "Ingresa el a�o de la pregunta ", j, ":"
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
        Escribir "En el a�o ", anioConsulta, " hab�a ", vivos, " personas vivas."
        Si vivos > 0 Entonces
            Escribir "La persona m�s joven ten�a ", masJoven, " a�os."
            Escribir "La persona m�s anciana ten�a ", masAnciano, " a�os."
        Sino
            Escribir "No hab�a personas vivas en ese a�o."
        FinSi
    FinPara
FinAlgoritmo
