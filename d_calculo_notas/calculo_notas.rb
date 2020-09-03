# Se pide:
# Crear un archivo llamado calculo_notas.rb .
# Crear un método llamado nota_mas_alta dentro del archivo calculo_notas.rb que reciba
# un arreglo con el nombre y notas de un alumno y devuelva la nota mas alta.
# Ejemplos:
# nota_mas_alta(data[0]) => 9
# nota_mas_alta(data[1]) => 8

# Tips:
# Devolver no es mostar en pantalla.
# El archivo no será el mismo mostrado, pueden ser más columnas y más filas.
# El espacio principal del programa no será probado, puedes ocuparlo para probar el código
# llamando a los métodos, recuerda transformar las notas a número.
# El nombre siempre será el primer elemento.
# Todos los alumnos tendrán la misma cantidad de notas.
# Cuidado con los tipos de datos, el arreglo contiene strings y números.

#creating method
def nota_mas_alta( param )
    new_array = param.select { | e | e.class == Integer }
    nota_mas_alta = new_array.max()
    return nota_mas_alta
end

#requiring csv to open and transform data
require "csv"
data__base = CSV.open("notas.data", converters: :all).readlines

#testing
puts nota_mas_alta(data__base[ 0 ])
puts nota_mas_alta(data__base[ 1 ])



