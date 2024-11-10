import tkinter as tk
from tkinter import ttk
from tkinter import messagebox

#boton para una funcion saludar
def mostrar_saludo():
    nombre = entreda_nombre.get()
    saludo = f"Hola{nombre}"
    etiqueta_saludo.config(text=saludo)

    #funcion para mostrar el estado de casilla de verificacion
    def mostrar_estado_casilla():
        estado ="Seleccionado" if casilla_var.get() else "No seleccionado"
        etiqueta_casilla.configl(text=f"Opcion seleccionada:  {opcion_var.get()}")

        #una barra de progreso
        def incrementar_progreso():
            progreso.step(10)

        #vamos a crear la ventana
    ventana = tk.Tk()
    ventana.title("Ejempl de interfaz en python")
    ventana.geometry("800x600")
    #etiquetas 

    etiqueta_bienvenida = tk.Label(ventana, text= "Bienvenido a tu primera interfaz",font=("Arial",16))
    etiqueta_bienvenida.pack(pady=10)

    #boton para mostrar el saludo
    boton_saludo = tk.Button(ventana, text="Saludar",command=mostrar_saludo)
    boton_saludo.pack()

    ventana.mainloop()