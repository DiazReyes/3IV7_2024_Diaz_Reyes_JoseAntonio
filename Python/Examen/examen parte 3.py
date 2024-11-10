import os
import tkinter as tk
from tkinter import simpledialog, messagebox
from tkinter import ttk




cartas = []


def cargar_cartas():
    ruta_predeterminada = r"C:\Users\jdiaz\Desktop\3IV7_2024_Diaz_Reyes_JoseAntonio\Python\Examen\cartas.txt"
    ruta_alternativa = os.path.join(os.path.dirname(__file__), "cartas.txt")
    
    ruta_archivo = ruta_predeterminada if os.path.exists(ruta_predeterminada) else ruta_alternativa
    
    try:
        with open(ruta_archivo, "r", encoding="utf-8") as archivo:
            next(archivo)  
            for linea in archivo:
                datos = linea.strip().split(",")  
                carta = {
                    "nombre": datos[0],
                    "tipo": datos[1],
                    "color": datos[2],
                    "costo": int(datos[3]),
                    "ataque": int(datos[4]),
                    "defensa": int(datos[5]),
                    "habilidad": datos[6],
                    "rareza": datos[7]
                }
                cartas.append(carta)
    except (FileNotFoundError, IndexError, ValueError):
        pass  


def registrar_carta():
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre de la carta:")
    tipo = simpledialog.askstring("Entrada", "Ingresa el tipo de la carta:")
    color = simpledialog.askstring("Entrada", "Ingresa el color de la carta:")
    costo = simpledialog.askinteger("Entrada", "Ingresa el costo de la carta:")
    ataque = simpledialog.askinteger("Entrada", "Ingresa el ataque de la carta:")
    defensa = simpledialog.askinteger("Entrada", "Ingresa la defensa de la carta:")
    habilidad = simpledialog.askstring("Entrada", "Ingresa la habilidad de la carta:")
    rareza = simpledialog.askstring("Entrada", "Ingresa la rareza de la carta:")

    carta = {
        "nombre": nombre,
        "tipo": tipo,
        "color": color,
        "costo": costo,
        "ataque": ataque,
        "defensa": defensa,
        "habilidad": habilidad,
        "rareza": rareza
    }
    cartas.append(carta)

# este se lo robe a alguien 
def consultar_cartas():
    if not cartas:
        messagebox.showinfo("Sin cartas", "No hay cartas registradas.")
    else:
        mostrar_tabla_cartas()





def mostrar_tabla_cartas():
    
    ventana_consulta = tk.Toplevel(root)
    ventana_consulta.title("Lista de Cartas")
    ventana_consulta.geometry("800x400")

    titulo = tk.Label(ventana_consulta, text="Lista de Cartas Registradas", font=("Arial", 16, "bold"))
    titulo.pack(pady=10)

    tabla = ttk.Treeview(ventana_consulta, columns=("nombre", "tipo", "color", "costo", "ataque", "defensa", "habilidad", "rareza"), show="headings")
    
 




    tabla.heading("nombre", text="Nombre")
    tabla.heading("tipo", text="Tipo")
    tabla.heading("color", text="Color")
    tabla.heading("costo", text="Costo")
    tabla.heading("ataque", text="Ataque")
    tabla.heading("defensa", text="Defensa")
    tabla.heading("habilidad", text="Habilidad")
    tabla.heading("rareza", text="Rareza")
    
    tabla.pack(pady=10, padx=10, expand=True)
    
    # Insertar los datos de las cartas en la tabla
    for carta in cartas:
        tabla.insert("", "end", values=(
            carta['nombre'], 
            carta['tipo'], 
            carta['color'], 
            carta['costo'], 
            carta['ataque'], 
            carta['defensa'], 
            carta['habilidad'], 
            carta['rareza']
        ))

def editar_carta():
    nombre = simpledialog.askstring("Entrada", "Ingrese el nombre de la carta que desea editar:")
    for carta in cartas:
        if carta['nombre'] == nombre:
            carta['tipo'] = simpledialog.askstring("Entrada", "Nuevo tipo (ENTER para mantener actual):") or carta['tipo']
            carta['color'] = simpledialog.askstring("Entrada", "Nuevo color (ENTER para mantener actual):") or carta['color']
            carta['costo'] = simpledialog.askinteger("Entrada", "Nuevo costo (ENTER para mantener actual):") or carta['costo']
            carta['ataque'] = simpledialog.askinteger("Entrada", "Nuevo ataque (ENTER para mantener actual):") or carta['ataque']
            carta['defensa'] = simpledialog.askinteger("Entrada", "Nueva defensa (ENTER para mantener actual):") or carta['defensa']
            carta['habilidad'] = simpledialog.askstring("Entrada", "Nueva habilidad (ENTER para mantener actual):") or carta['habilidad']
            carta['rareza'] = simpledialog.askstring("Entrada", "Nueva rareza (ENTER para mantener actual):") or carta['rareza']
            messagebox.showinfo("Éxito", "La carta se editó exitosamente")
            return
    messagebox.showinfo("Carta no encontrada", "No se encontró la carta con ese nombre.")

def eliminar_carta():
    nombre = simpledialog.askstring("Entrada", "Ingrese el nombre de la carta que desea eliminar:")
    for carta in cartas:
        if carta['nombre'] == nombre:
            cartas.remove(carta)
            messagebox.showinfo("Éxito", "La carta se eliminó exitosamente")
            return
    messagebox.showinfo("Carta no encontrada", "No se encontró la carta con ese nombre.")

def salir():
    root.quit()



















def main():
    global root
    root = tk.Tk()
    root.title("Gestión de Cartas")
    root.geometry("400x350")
    
    titulo = tk.Label(root, text="Sistema de Gestión de Cartas", font=("Arial", 18, "bold"))
    titulo.pack(pady=20)
    
    cargar_cartas()

    btn_registrar = tk.Button(root, text="Registrar Carta", command=registrar_carta)
    btn_consultar = tk.Button(root, text="Consultar Cartas", command=consultar_cartas)
    btn_editar = tk.Button(root, text="Editar Carta", command=editar_carta)
    btn_eliminar = tk.Button(root, text="Eliminar Carta", command=eliminar_carta)
    btn_salir = tk.Button(root, text="Salir", command=salir)

    btn_registrar.pack(pady=5, padx=10, fill="x")
    btn_consultar.pack(pady=5, padx=10, fill="x")
    btn_editar.pack(pady=5, padx=10, fill="x")
    btn_eliminar.pack(pady=5, padx=10, fill="x")
    btn_salir.pack(pady=10, padx=10, fill="x")
    
    root.mainloop()


main()
