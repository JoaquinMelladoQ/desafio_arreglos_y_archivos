
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