import tkinter as tk
from tkinter import messagebox, simpledialog, ttk

# Lista de cartas predeterminada
cartas = [
    {"nombre": "Dragón de Fuego", "tipo": "Criatura", "color": "Rojo", "costo": 5, "ataque": 5, "defensa": 5, "habilidad": "Vuela", "rareza": "Rara"},
    {"nombre": "Hechizo de Curación", "tipo": "Hechizo", "color": "Blanco", "costo": 2, "ataque": 0, "defensa": 0, "habilidad": "Recupera 5 puntos de vida", "rareza": "Común"},
    {"nombre": "Guerrero de la Luz", "tipo": "Criatura", "color": "Blanco", "costo": 3, "ataque": 3, "defensa": 3, "habilidad": "Protección contra criaturas rojas", "rareza": "Inusual"},
    {"nombre": "Hechizo de Rayo", "tipo": "Hechizo", "color": "Rojo", "costo": 3, "ataque": 0, "defensa": 0, "habilidad": "Inflige 4 puntos de daño", "rareza": "Común"},
    {"nombre": "Guardia del Bosque", "tipo": "Criatura", "color": "Verde", "costo": 4, "ataque": 2, "defensa": 4, "habilidad": "Vigilancia", "rareza": "Inusual"},
    {"nombre": "Cura Mágica", "tipo": "Hechizo", "color": "Blanco", "costo": 2, "ataque": 0, "defensa": 0, "habilidad": "Recupera 3 puntos de vida", "rareza": "Común"},
    {"nombre": "Fénix Resurgente", "tipo": "Criatura", "color": "Rojo", "costo": 6, "ataque": 4, "defensa": 4, "habilidad": "Cuando muere, vuelve a la mano", "rareza": "Rara"},
    {"nombre": "Mago de la Tormenta", "tipo": "Criatura", "color": "Azul", "costo": 4, "ataque": 3, "defensa": 3, "habilidad": "Scry 1", "rareza": "Inusual"},
    {"nombre": "Héroe del Pueblo", "tipo": "Criatura", "color": "Blanco", "costo": 3, "ataque": 2, "defensa": 2, "habilidad": "Lucha", "rareza": "Común"},
    {"nombre": "Destructor de Mundos", "tipo": "Criatura", "color": "Negro", "costo": 7, "ataque": 6, "defensa": 6, "habilidad": "Destruye un permanente", "rareza": "Rara"},
    {"nombre": "Espectro del Abismo", "tipo": "Criatura", "color": "Negro", "costo": 5, "ataque": 4, "defensa": 4, "habilidad": "Vuela", "rareza": "Inusual"},
    {"nombre": "Cazador de Sombras", "tipo": "Criatura", "color": "Negro", "costo": 3, "ataque": 3, "defensa": 2, "habilidad": "Destello", "rareza": "Común"},
    {"nombre": "Vidente de la Noche", "tipo": "Criatura", "color": "Azul", "costo": 4, "ataque": 2, "defensa": 3, "habilidad": "Scry 2", "rareza": "Inusual"},
    {"nombre": "Terremoto", "tipo": "Hechizo", "color": "Rojo", "costo": 5, "ataque": 0, "defensa": 0, "habilidad": "Destruye todas las criaturas con coste 2 o menos", "rareza": "Rara"},
    {"nombre": "Bestia de la Selva", "tipo": "Criatura", "color": "Verde", "costo": 4, "ataque": 4, "defensa": 4, "habilidad": "Prisa", "rareza": "Común"},
    {"nombre": "Ilusión del Mar", "tipo": "Criatura", "color": "Azul", "costo": 3, "ataque": 2, "defensa": 2, "habilidad": "No puede ser bloqueada", "rareza": "Inusual"},
    {"nombre": "Rugido de la Tierra", "tipo": "Hechizo", "color": "Verde", "costo": 4, "ataque": 0, "defensa": 0, "habilidad": "Aumenta la fuerza de una criatura", "rareza": "Común"},
    {"nombre": "Orbe de Sabiduría", "tipo": "Artefacto", "color": "Incoloro", "costo": 3, "ataque": 0, "defensa": 0, "habilidad": "Robar una carta", "rareza": "Rara"},
    {"nombre": "Vínculo de Vida", "tipo": "Hechizo", "color": "Blanco", "costo": 2, "ataque": 0, "defensa": 0, "habilidad": "Ganas vida igual al coste", "rareza": "Inusual"},
    {"nombre": "Maestro de la Llama", "tipo": "Criatura", "color": "Rojo", "costo": 4, "ataque": 3, "defensa": 2, "habilidad": "Cuando muere, hace 2 puntos de daño", "rareza": "Común"},
    {"nombre": "Guardián de la Luz", "tipo": "Criatura", "color": "Blanco", "costo": 3, "ataque": 2, "defensa": 3, "habilidad": "Protección contra criaturas negras", "rareza": "Inusual"},
    {"nombre": "Plaga del Infinito", "tipo": "Hechizo", "color": "Negro", "costo": 5, "ataque": 0, "defensa": 0, "habilidad": "Destruye todas las criaturas", "rareza": "Rara"},
    {"nombre": "Espíritu de la Selva", "tipo": "Criatura", "color": "Verde", "costo": 4, "ataque": 3, "defensa": 5, "habilidad": "Aumenta 1 punto de vida", "rareza": "Inusual"},
    {"nombre": "Fuego Eterno", "tipo": "Hechizo", "color": "Rojo", "costo": 3, "ataque": 0, "defensa": 0, "habilidad": "Inflige 3 puntos de daño", "rareza": "Común"},
]


# registrar la a acarta
def registrar_carta():
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre de la carta: ")
    tipo = simpledialog.askstring("Entrada", "Ingresa el tipo de la carta: ")
    color = simpledialog.askstring("Entrada", "Ingresa el color de la carta: ")
    costo = simpledialog.askinteger("Entrada", "Ingresa el costo de la carta: ")
    ataque = simpledialog.askinteger("Entrada", "Ingresa el ataque de la carta: ")
    defensa = simpledialog.askinteger("Entrada", "Ingresa la defensa de la carta: ")
    habilidad = simpledialog.askstring("Entrada", "Ingresa la habilidad de la carta: ")
    rareza = simpledialog.askstring("Entrada", "Ingresa la rareza de la carta: ")

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
    messagebox.showinfo("Éxito", "La carta se registró exitosamente")

# consiuklta la carta
def consultar_cartas():
    if not cartas:
        messagebox.showinfo("Sin cartas", "No hay cartas registradas :(")
    else:
        ventana_consulta = tk.Toplevel(root)
        ventana_consulta.title("Lista de Cartas")

        frame = tk.Frame(ventana_consulta)
        frame.pack(fill="both", expand=True)

        # Scroll ,gracias a un wey  arabe que subio el code 
        scrollbar = tk.Scrollbar(frame, orient="horizontal")
        scrollbar.pack(side="bottom", fill="x")

        # info jobs 
        texto = tk.Text(frame, wrap="none", xscrollcommand=scrollbar.set)
        texto.pack(side="left", fill="both", expand=True)
        scrollbar.config(command=texto.xview)








        for carta in cartas:
            info = f"Nombre: {carta['nombre']}, Tipo: {carta['tipo']}, Color: {carta['color']}, Costo: {carta['costo']}, Ataque: {carta['ataque']}, Defensa: {carta['defensa']}, Habilidad: {carta['habilidad']}, Rareza: {carta['rareza']}\n"
            texto.insert("end", info)

# Función para editar una carta
def editar_carta():





    nombre = simpledialog.askstring("Entrada", "Ingrese el nombre de la carta que desea editar: ")
    for carta in cartas:






        if carta['nombre'] == nombre:
            carta['tipo'] = simpledialog.askstring("Entrada", "Ingresa el nuevo tipo o presiona ENTER para mantener el actual: ") or carta['tipo']
            carta['color'] = simpledialog.askstring("Entrada", "Ingresa el nuevo color o presiona ENTER para mantener el actual: ") or carta['color']
            carta['costo'] = simpledialog.askinteger("Entrada", "Ingresa el nuevo costo o presiona ENTER para mantener el actual: ") or carta['costo']
            carta['ataque'] = simpledialog.askinteger("Entrada", "Ingresa el nuevo ataque o presiona ENTER para mantener el actual: ") or carta['ataque']
            carta['defensa'] = simpledialog.askinteger("Entrada", "Ingresa la nueva defensa o presiona ENTER para mantener el actual: ") or carta['defensa']
            carta['habilidad'] = simpledialog.askstring("Entrada", "Ingresa la nueva habilidad o presiona ENTER para mantener el actual: ") or carta['habilidad']
            carta['rareza'] = simpledialog.askstring("Entrada", "Ingresa la nueva rareza o presiona ENTER para mantener el actual: ") or carta['rareza']
            messagebox.showinfo("Éxito", "La carta se editó exitosamente")
            return
    messagebox.showinfo("Carta no encontrada", "No se encontró la carta con ese nombre.")

# Eliminar cartillas
def eliminar_carta():
    nombre = simpledialog.askstring("Entrada", "Ingrese el nombre de la carta que desea eliminar: ")
    for carta in cartas:
        if carta['nombre'] == nombre:
            cartas.remove(carta)
            messagebox.showinfo("Éxito", "La carta se eliminó exitosamente")
            return
    messagebox.showinfo("Carta no encontrada", "No se encontró la carta con ese nombre.")


root = tk.Tk()
root.title("Gestión de Cartas")

#buttons
btn_registrar = tk.Button(root, text="Registrar carta", command=registrar_carta)
btn_registrar.pack(pady=5)

btn_consultar = tk.Button(root, text="Consultar lista de cartas", command=consultar_cartas)
btn_consultar.pack(pady=5)

btn_editar = tk.Button(root, text="Editar carta", command=editar_carta)
btn_editar.pack(pady=5)

btn_eliminar = tk.Button(root, text="Eliminar carta", command=eliminar_carta)
btn_eliminar.pack(pady=5)

btn_salir = tk.Button(root, text="Salir", command=root.quit)
btn_salir.pack(pady=5)

# arranca ptm
root.mainloop()
