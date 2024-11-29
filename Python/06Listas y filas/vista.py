import tkinter as tk
from tkinter import messagebox

def crear_interfaz(logica_pila):
#vamos a crear la interfaz 
    def crear_interfaz(logica_pila):
    #creamos la ventana
        ventana = tk.Tk()
        ventana.title("Manejo de Pila")
        ventana.geometry("400x400")
    
    
#necesitamos  a una pila para realizar las invocaciones
pila = logica_pila["crear_pila"]()

#funciones de la interfaz
def manejar_apilar():
    elemento = entrada.elemento.get()
    if elemento:
        logica_pila["apilar"](pila, elemento)
        actualizar_pila()
        entrada_elemento.delete(0, tk.END)
    else:
        messagebox.showwarning("Entrada vacia", "Porfavor , ingresa un elemento ")
        
        
def manejar_desapilar():
    try:
        elemento = logica_pila["desapilar"]()
        messagebox.showinfo("Desapilar", f"Elemento de la cima: {elemento} ")
    except IndexError as e:
        messagebox.showerror("Error", str(e))
        
def manejar_tamano():
    tam = logica_pila["Tamaño"](pila)
    messagebox.showinfo("Tamaño",f"El tamaño de la pila :  {tam}")
    
    
def manejar_mostrar():
    pila_actual = logica_pila["mostrar_pila"](pila)

    
def manejar_mostrar():
    pila_actual = logica_pila["mostrar_pila"](pila)
    etiqueta_pila.config(text=pila_actual)
    
#componentes de la interfaz"
tk.Label(ventana, text="Manejo de una Pila", font=("Arial", 16)).pack(pady=10)

entrada_elemento = tk.Entry(ventana, width=30)
entrada_elemento.pack(pady=5)
tk.Button(ventana, text="Apilar", command=manejar_apilar).pack(pady=5)
tk.Button(ventana, text="Desapilar", command=manejar_desapilar).pack(pady=5)
tk.Button(ventana, text="Ver cima", command=manejar).pack(pady=5)
tk.Button(ventana, text="Apilar", command=manejar_tamano).pack(pady=5)
tk.Button(ventana, text="Apilar", command=manejar_mostrar).pack(pady=5)

etiqueta_pila = tk.Label(ventana, text="Pila actual: []", font =("Arial",12))
etiqueta_pila.pack(pady=20)

ventana.mainloop()
