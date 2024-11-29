import tkinter as tk
from tkinter import messagebox
import time

class Pila:
    def __init__(self):
        self.items = []

    def apilar(self, item):
        if len(self.items) < 40:
            self.items.append(item)
        else:
            raise OverflowError("La pila no puede contener más de 40 elementos.")

    def desapilar(self):
        if self.items:
            return self.items.pop()
        raise IndexError("La pila está vacía.")


    def cima(self):
        if self.items:
            return self.items[-1]
        raise IndexError("La pila está vacía.")

    def tamaño(self):
        return len(self.items)

    def mostrar(self):
        return self.items

    def vaciar(self):
        self.items = []

def burbuja_pila(pila):
    lista = pila.mostrar()
    n = len(lista)
    for i in range(n):
        for j in range(0, n - i - 1):
            if lista[j] > lista[j + 1]:
                lista[j], lista[j + 1] = lista[j + 1], lista[j]
    pila.items = lista

def seleccion_sort_pila(pila):
    lista = pila.mostrar()
    n = len(lista)
    for i in range(n):
        min_idx = i
        for j in range(i + 1, n):
            if lista[j] < lista[min_idx]:
                min_idx = j
        lista[i], lista[min_idx] = lista[min_idx], lista[i]
    pila.items = lista

def insercion_pila(pila):
    lista = pila.mostrar()
    for i in range(1, len(lista)):
        key = lista[i]
        j = i - 1
        while j >= 0 and key < lista[j]:
            lista[j + 1] = lista[j]
            j -= 1
        lista[j + 1] = key
    pila.items = lista

def merge_sort_pila(pila):
    lista = pila.mostrar()

    def merge_sort(lista):
        if len(lista) > 1:
            mid = len(lista) // 2
            izquierda = lista[:mid]
            derecha = lista[mid:]

            merge_sort(izquierda)
            merge_sort(derecha)

            i = j = k = 0
            while i < len(izquierda) and j < len(derecha):
                if izquierda[i] < derecha[j]:
                    lista[k] = izquierda[i]
                    i += 1
                else:
                    lista[k] = derecha[j]
                    j += 1
                k += 1

            while i < len(izquierda):
                lista[k] = izquierda[i]
                i += 1
                k += 1

            while j < len(derecha):
                lista[k] = derecha[j]
                j += 1
                k += 1

    merge_sort(lista)
    pila.items = lista

def quick_sort_pila(pila):
    lista = pila.mostrar()

    def quick_sort(lista):
        if len(lista) <= 1:
            return lista
        pivote = lista[len(lista) // 2]
        izquierda = [x for x in lista if x < pivote]
        medio = [x for x in lista if x == pivote]
        derecha = [x for x in lista if x > pivote]
        return quick_sort(izquierda) + medio + quick_sort(derecha)

    pila.items = quick_sort(lista)

def crear_interfaz():
    pila = Pila()

    def manejar_apilar():
        elemento = entrada_elemento.get().strip()
        if elemento.isdigit():
            try:
                pila.apilar(int(elemento))
                actualizar_pila()
                entrada_elemento.delete(0, tk.END)
            except OverflowError as e:
                messagebox.showerror("Error", str(e))
        else:
            messagebox.showwarning("Entrada inválida", "Ingresa un número válido.")

    def manejar_desapilar():
        try:
            pila.desapilar()
            actualizar_pila()
        except IndexError:
            messagebox.showerror("Error", "La pila está vacía.")

    def manejar_ordenar(metodo):
        if pila.tamaño() == 0:
            messagebox.showerror("Error", "La pila está vacía. No se puede ordenar.")
            return

        lista_original = pila.mostrar().copy()

        inicio = time.time()

        if metodo == "Burbuja":
            burbuja_pila(pila)
        elif metodo == "Selección":
            seleccion_sort_pila(pila)
        elif metodo == "Inserción":
            insercion_pila(pila)
        elif metodo == "Merge Sort":
            merge_sort_pila(pila)
        elif metodo == "Quick Sort":
            quick_sort_pila(pila)

        fin = time.time()
        tiempo = fin - inicio

        messagebox.showinfo(
            "Ordenamiento",
            f"Pila original: {lista_original}\n"
            f"Pila ordenada: {pila.mostrar()}\n"
            f"Tiempo tomado: {tiempo:.6f} segundos."
        )
        actualizar_pila()

    def manejar_vaciar():
        if messagebox.askyesno("Confirmación", "¿Estás seguro de que deseas vaciar la pila?"):
            pila.vaciar()
            actualizar_pila()

    def actualizar_pila():
        etiqueta_pila.config(
            text=f"Pila actual: {pila.mostrar() if pila.tamaño() > 0 else '[]'}"
        )

    ventana = tk.Tk()
    ventana.title("Manejo de Pila con Ordenamientos")
    ventana.geometry("500x600")


    tk.Label(ventana, text="Manejo de una Pila", font=("Arial", 16)).pack(pady=10)

    entrada_elemento = tk.Entry(ventana, width=30)
    entrada_elemento.pack(pady=5)

    tk.Button(ventana, text="Apilar", command=manejar_apilar).pack(pady=5)
    tk.Button(ventana, text="Desapilar", command=manejar_desapilar).pack(pady=5)
    tk.Button(ventana, text="Vaciar pila", command=manejar_vaciar).pack(pady=5)

    tk.Label(ventana, text="Métodos de Ordenamiento:", font=("Arial", 14)).pack(pady=10)

    metodos = ["Burbuja", "Selección", "Inserción", "Merge Sort", "Quick Sort"]
    for metodo in metodos:
        tk.Button(
            ventana,
            text=f"Ordenar con {metodo}",
            command=lambda m=metodo: manejar_ordenar(m),
        ).pack(pady=5)

    etiqueta_pila = tk.Label(ventana, text="Pila actual: []", font=("Arial", 12))
    etiqueta_pila.pack(pady=20)

    ventana.mainloop()


crear_interfaz()
