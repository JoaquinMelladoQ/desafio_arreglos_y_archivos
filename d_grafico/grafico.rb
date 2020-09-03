# Crear el archivo grafico.rb que contenga el método chart que construya un gráfico en la
# consola a partir de un arreglo con datos. El método no debe devolver ningún valor.

# Uso:
# Tips:
# Por cada dato se debe imprimir el | y una cantidad de * equivalente el número o X veces el
# número.
# Una solución más avanzada podría ajustar la cantidad de * a mostrar por números, la solución
# inicial debe fijar 2 * por cada número.
# Es importante encontrar el número máximo.
# ➜ irb
# 2.6.0 :001 > require_relative "grafico"
# => true
# 2.6.0 :002 > chart([5, 3, 2, 5, 10])
# |**********
# |******
# |****
# |**********
# |********************
# >--------------------
# 1 2 3 4 5 6 7 8 9 10


def chart( param )
    maximum = param.max()
    param.each do | e |
        puts "|" + "*" * ( e * 2 )
    end
    puts ">" + "--" * ( maximum )
    1.upto( maximum ) do | i |
        print " #{ i }"
    end
    puts
end

chart([5, 3, 2, 5, 10])