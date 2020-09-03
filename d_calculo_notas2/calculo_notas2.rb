# Se pide:
# Crear un archivo llamado calculo_notas2.rb .
# Crear un método llamado notas_mas_alta dentro del archivo calculo_notas2.rb que
# reciba un arreglo con el nombre y notas de un alumno y devuelva una arreglo con la nota mas
# alta de cada alumno.

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
    notas_mas_altas = []
    param.each do | e |
        e.select! { | x | x.class == Integer }
        notas_mas_altas.push e.max()
    end
    return notas_mas_altas
end

#requiring to read data
require "csv"
data__base = CSV.open("notas.data", converters: :all).readlines 




