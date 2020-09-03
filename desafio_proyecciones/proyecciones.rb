# Crear el programa proyecciones.rb además tendremos un archivo con las proyecciones de venta
# de cada mes del próximo año. Este archivo debe llamarse ventas_base.db y estar en el misma
# carpeta de trabajo que el código. Para realizar el ejercicio puedes agregar como contenido el
# siguiente.

# El desafío consiste en hacer 2 simulaciones.
# Las ventas totales dado que en la primera mitad del semestre se vende un 10% más.
# Las ventas totales dado que en la segunda mitad del semestre se vende un 20% más.
# El resultado debe ser presentado un archivo llamado resultados.data . Los datos deben contener
# máximo 2 decimales y estar cada uno en una sola línea.

# Uso:
# ruby proyecciones.rb
# Contenido resultados.data

# 231231.32
# 879879.43

# Tips:
# El output en pantalla no es necesario pero no afecta la evaluación, se debe crear el archivo
# resultados.data y debe cumplir con el formato establecido.
# Tener cuidado con los datos de entrada, son strings y deben ser tratados como float.
# Se recomienda crear un método que reciba cuatro argumentos:
# El arreglo con los datos.
# El aumento
# Desde qué índice se debe leer el arreglo
# Hasta qué índice se debe leer el arreglo
# Investigar respecto a ruby format number
# El archivo con el que se probará el ejercicio tendrá distintos datos.