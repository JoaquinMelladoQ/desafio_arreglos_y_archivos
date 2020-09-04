
def total_sales( param )
    sum = 0
    param.each do | e |
        sum += e
    end
    return sum
end

data__base = open("ventas_base.db").read.chomp.split(',')

param_data = data__base.map do | e |
    e = e.to_f
end

first_semester = []
second_semester = []

for i in 0..11 do
    if ( i <= 6 )
        first_semester.push (param_data[ i ] * 1.10).round( 2 )
    else
        first_semester.push param_data[ i ].round( 2 )
    end
end

for i in 0..11 do
    if ( i >= 5 )
        second_semester.push (param_data[ i ] * 1.20).round( 2 )
    else
        second_semester.push param_data[ i ].round( 2 )
    end
end

first_semester_total = total_sales(first_semester)
second_semester_total = total_sales(second_semester)

open("resultados.data", "w") do | file |
    file << "#{first_semester_total}\n"
    file << "#{second_semester_total}"
end


