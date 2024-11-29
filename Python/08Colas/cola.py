import tkinter as tk
from tkinter import messagebox


def crear_col():
    return []

def encolar(cola, elemento):
    cola.append(elemento)

def esta_vacia(cola):
    return len(cola) == 0

def desencolar(cola):
    if esta_vacia(cola):
        raise IndexError("Error: la cola está vacía")
    return cola.pop(0)

def frente(cola):
    if esta_vacia(cola):
        raise IndexError("Error: la cola está vacía")
    return cola[0]

def tamano(cola):
    return len(cola)

class ColaGUI:
    def __init__(self, root):
        self.cola = crear_col()

        root.title("Gestión de Cola")
        root.geometry("400x300")

        self.label = tk.Label(root, text="Operaciones con Cola", font=("Arial", 14))
        self.label.pack(pady=10)

      
        self.entry = tk.Entry(root, width=30)
        self.entry.pack(pady=5)


        self.encolar_btn = tk.Button(root, text="Encolar", command=self.encolar)
        self.encolar_btn.pack(pady=5)

        self.desencolar_btn = tk.Button(root, text="Desencolar", command=self.desencolar)
        self.desencolar_btn.pack(pady=5)

        self.frente_btn = tk.Button(root, text="Frente", command=self.ver_frente)
        self.frente_btn.pack(pady=5)

        self.mostrar_btn = tk.Button(root, text="Mostrar Cola", command=self.mostrar_cola)
        self.mostrar_btn.pack(pady=5)

        self.tamano_btn = tk.Button(root, text="Tamaño", command=self.ver_tamano)
        self.tamano_btn.pack(pady=5)

        self.output = tk.Label(root, text="", fg="blue")
        self.output.pack(pady=10)

   
    def encolar(self):
        elemento = self.entry.get()
        if elemento:
            encolar(self.cola, elemento)
            self.output.config(text=f"Elemento '{elemento}' encolado.")
            self.entry.delete(0, tk.END)
        else:
            messagebox.showerror("Error", "Ingrese un elemento para encolar.")

    def desencolar(self):
        try:
            elemento = desencolar(self.cola)
            self.output.config(text=f"Elemento '{elemento}' desencolado.")
        except IndexError as e:
            messagebox.showerror("Error", str(e))

    def ver_frente(self):
        try:
            elemento = frente(self.cola)
            self.output.config(text=f"Frente de la cola: {elemento}")
        except IndexError as e:
            messagebox.showerror("Error", str(e))

    def mostrar_cola(self):
        self.output.config(text=f"Cola actual: {self.cola}")

    def ver_tamano(self):
        self.output.config(text=f"Tamaño de la cola: {tamano(self.cola)}")


if __name__ == "__main__":
    root = tk.Tk()
    app = ColaGUI(root)
    root.mainloop()
