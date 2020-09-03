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

#creating method total sales
def total_sales( param )
    sum = 0
    param.each do | e |
        sum += e
    end
    return sum
end

#reading data from file
data__base = open("ventas_base.db").read

#array modified
param = data__base.split(',')

#transforming values to floating numbers and pushing changes to original array
param.map! do | e |
    e = e.to_f
end

#pushing to an empy array the results
first_semester = []
second_semester = []

for i in 0..11 do
    if ( i <= 6 )
        first_semester.push (param[ i ] * 1.10).truncate( 2 )
    else
        first_semester.push param[ i ].truncate( 2 )
    end
end

for i in 0..11 do
    if ( i >= 5 )
        second_semester.push (param[ i ] * 1.20).truncate( 2 )
    else
        second_semester.push param[ i ].truncate( 2 )
    end
end

#using arrays to sending to method and new file
first_semester_total = total_sales(first_semester)
second_semester_total = total_sales(second_semester)

#creating new file
open("resultados.data", "w") do | file |
    file << "#{first_semester_total}\n"
    file << "#{second_semester_total}"
end


