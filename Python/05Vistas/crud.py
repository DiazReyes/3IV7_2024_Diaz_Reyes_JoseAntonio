#derivado a que es necesario poder almacenar diferentes fuentes de datos, en python se utiliza la variable diccionario
#un diccionario es capaz de almacenar diferentes tipos de datos en formato de lista
import tkinter as tk
from tkinter import messagebox, simpledialog

 #para poder guardar los datos correspondientes de las listas es necesario utilizar un archivo para ello vamos a ocupar la libreria os
import os
    #vamos a declarar un archivo , tenemos 2 opciones una ruta dinamica o una ruta estatica, eso queda de tarea

ARCHIVO = 

#primero vamos a crear una lista de alumnos
alumnos = []
# vamos a crear una funcion para cargar datos 


def cargar_datos():
    #verificar si existe
    if os.path(ARCHIVO,"r") as f:
        with open(ARCHIVO, "r") as f:
            for linea in f:
            #que voy a obtener por cada linea 
            #es un metodo de cadena que nos ayuda a eliminar espacios a el inicio y final de una cadena
                partes = linea.strip().splint(",")
            if len(partes) >= 6:
                boleta = partes[0] 
                nombre = partes[1]
                apellido_paterno =partes[2]
                apellido_materno = partes [3]
                fecha_nacimiento = partes[4]
                calificaciones = list(map(float,partes[5:]))
                
                alumno = {
        "boleta": boleta,
        "nombre": nombre,
        "apellido_paterno": appat,
        "apellido_materno": apmat,
        "fecha_nacimiento": fecnac,
        "calificaciones": calificaciones
    }
    alumnos.append(alumno)

    def guardar_datos():
        with open(ARCHIVO, "w") as f:
            for alumno in alumnos:
                f.write(f"{alumno['boleta']},{alumno['nombre']}"),{alumno['apellido_paterno']},{alumno['apellido_materno']},{alumno['fecha_nacimiento']},{','.join}")



#vamos a crear una función que se encargue de registrar a un alumno
def registar_alumno():
    boleta = simpledialog.askstring("Entrada", "Ingresa la boleta del alumno: ") 
    nombre = simpledialog.askstring("Entrada","Ingresa el nombre del alumno: ")
    appat = simpledialog.askstring("Entrada","Ingresa el apellido paterno del alumno: ")
    apmat = simpledialog.askstring("Entrada","Ingresa el apellido materno del alumno: ")
    fecnac = simpledialog.askstring("Entrada","Ingresa la fecha de nacimiento (dd/mm/aaaa) del alumno: ")

    calificaciones = []
    #Vamos a solicidar 3 calificaciones
    for i in range(1, 4):
        calificacionparcial = float(simpledialog.askstring("Entrada", "Ingrese la calificación del parcial: "))
        calificaciones.append(calificacionparcial)

    #defino al alumno
    alumno = {
        "boleta": boleta,
        "nombre": nombre,
        "apellido_paterno": appat,
        "apellido_materno": apmat,
        "fecha_nacimiento": fecnac,
        "calificaciones": calificaciones
    }
   
    alumnos.append(alumno)
    messagebox.showinfo("Exito", "El alumno se registró exitosamente")

#funcion para consultar los datos del arreglo de alumnos(lista)
def consultar_alumnos():
    if not alumnos:
        messagebox.showinfo("Sin alumnos", "No hay alumnos :(")
    else:
        print("Lista de alumnos: \n")
        for alumno in alumnos:
            print(f" Nombre: {alumno['nombre']} {alumno['apellido_paterno']} {alumno['apellido_materno']}, Fecha de Nacimiento: {alumno['fecha_nacimiento']}, Calificaciones: {alumno['calificaciones']} \n")

#funcion para buscar y editar por la boleta
def editar_alumno():
    boleta = simpledialog.askstring("Entrada", "Ingrese la boleta del alumno que desea editar: ")
    for alumno in alumnos:
        if alumno['boleta'] == boleta:
            alumno['nombre'] = simpledialog.askstring("Entrada", "Ingresa el nuevo nombre o presiona ENTER para mantener el actual: ") or alumno ['nombre']
            alumno['apellido_paterno'] = simpledialog.askstring("Entrada", "Ingresa el nuevo apellido paterno o presiona ENTER para mantener el actual: ") or alumno ['apellido_paterno']
            alumno['apellido_materno'] = simpledialog.askstring("Entrada", "Ingresa el nuevo apellido materno o presiona ENTER para mantener el actual: ") or alumno ['apellido_materno']
            alumno['fecha_nacimiento'] = simpledialog.askstring("Entrada", "Ingresa la nueva fecha de nacimiento o presiona ENTER para mantener la actual: ") or alumno ['fecha_nacimiento']
            #editamos las calificaciones
            for i in range(3):
                nueva_calificacion = simpledialog.askstring("Entrada", "Ingresa la nueva calificacion o presiona ENTER para mantener la actual: ")
                if nueva_calificacion:
                    alumno['calificaciones'][i] = float(nueva_calificacion)
    messagebox.showinfo("Sin alumnos", "No hay más alumnos")
    return

def eliminar_alumno():
    None

#vamos a crear un menú
def main():
    while True:
        print("Menu de gestión de próximos extras")
        print("1. Registrar alumno")
        print("2. Consultar lista de alumnos")
        print("3. Editar alumno")
        print("4. Eliminar alumno")
        print("5. Salir")

        opcion = input("Selecciona una opción: ")

        if opcion == "1":
            registar_alumno()
        elif opcion == "2":
            consultar_alumnos()
        elif opcion == "3":
            editar_alumno()
        elif opcion == "4":
            #crearla
            eliminar_alumno()
        elif opcion == "5":
            print("Hasta pronto :)")
            break
        else:
            print("Opcion no válida")

main()
