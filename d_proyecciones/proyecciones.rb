
def total_sales( param )
    sum = 0
    param.each do | e |
        sum += e
    end
    return sum
end

data__base = open("ventas_base.db").read

param = data__base.split(',')

param.map! do | e |
    e = e.to_f
end

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

first_semester_total = total_sales(first_semester)
second_semester_total = total_sales(second_semester)

open("resultados.data", "w") do | file |
    file << "#{first_semester_total}\n"
    file << "#{second_semester_total}"
end


