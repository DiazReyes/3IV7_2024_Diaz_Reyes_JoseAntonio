import Pila
import vista
#definir un diccionario de las funciones de el archivo para que puede invocarlas (llamar)

    
    #diccionario de las funciones de pila
logica_pila = {
        "crear_pila" : Pila.crear_pila,
        "apilar" : Pila.apilar,
        "desapilar" : Pila.desapilar,
        "cima" : Pila.cima,
        "esta vacia" : Pila.esta_vacia,
        "tamano" : Pila.tamano,
        "mostrar_pila" : Pila.mostrar_pila
        
    }
 
    #crear interfaz a invocarla
vista.crear_interfaz(logica_pila)
    
main()
    