def nota_mas_alta( param )
    notas_mas_altas = []
    param.each do | e |
        e.select! { | x | x.class == Integer }
        notas_mas_altas.push e.max()
    end
    return notas_mas_altas
end

require "csv"
data__base = CSV.open("notas.data", converters: :all).readlines 

print "#{nota_mas_alta(data__base)}\n"


