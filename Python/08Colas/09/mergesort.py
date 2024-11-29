import numpy as np

def convolution2d(image, kernel):
    """
    Realiza una convolución 2D sobre una imagen con un kernel dado.

    Args:
        image (np.array): La matriz 2D de la imagen.
        kernel (np.array): El filtro 2D (kernel).
    
    Returns:
        np.array: La matriz convolucionada.
    """
    # Dimensiones de la imagen y el kernel
    image_height, image_width = image.shape
    kernel_height, kernel_width = kernel.shape

    # Asegurarse de que el kernel tiene dimensiones impares
    assert kernel_height % 2 == 1 and kernel_width % 2 == 1, "El kernel debe tener dimensiones impares."

    # Calcular los márgenes del kernel
    pad_height = kernel_height // 2
    pad_width = kernel_width // 2

    # Rellenar la imagen con ceros alrededor (zero-padding)
    padded_image = np.pad(image, ((pad_height, pad_height), (pad_width, pad_width)), mode='constant')

    # Crear una matriz de salida con las mismas dimensiones que la imagen
    output = np.zeros_like(image)

    # Aplicar la convolución
    for i in range(image_height):
        for j in range(image_width):
            # Extraer la región correspondiente
            region = padded_image[i:i + kernel_height, j:j + kernel_width]
            # Multiplicar elemento a elemento y sumar
            output[i, j] = np.sum(region * kernel)

    return output


# Ejemplo de uso
if __name__ == "__main__":
    # Imagen de ejemplo (5x5)
    image = np.array([
        [1, 2, 3, 4, 5],
        [5, 6, 7, 8, 9],
        [9, 10, 11, 12, 13],
        [13, 14, 15, 16, 17],
        [17, 18, 19, 20, 21]
    ])

    # Kernel de ejemplo (3x3, filtro de detección de bordes)
    kernel = np.array([
        [-1, -1, -1],
        [-1,  8, -1],
        [-1, -1, -1]
    ])

    # Realizar la convolución
    result = convolution2d(image, kernel)

    # Imprimir los resultados
    print("Imagen original:")
    print(image)

    print("\nKernel:")
    print(kernel)

    print("\nResultado de la convolución:")
    print(result)

