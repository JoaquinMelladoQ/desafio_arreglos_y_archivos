
def nota_mas_alta( param )
    new_array = param.select { | e | e.class == Integer }
    nota_mas_alta = new_array.max()
    return nota_mas_alta
end

require "csv"
data__base = CSV.open("notas.data", converters: :all).readlines

puts nota_mas_alta(data__base[ 0 ])
puts nota_mas_alta(data__base[ 1 ])



