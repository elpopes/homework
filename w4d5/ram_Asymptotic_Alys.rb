# model of computation. RAM random access machine
# number of loops times the number of steps in each iteration.

def chop_add(num1, num2)
    # 3 steps = two memory accesses and one division
    num1 = num1 / 5.0
    # 3 steps = two memory accesses and one division
    num2 = num2 / 5.0

    # 300 times 6 (four mem accesses and two divs)
    300.times do
        num1 = num1 / 2
        num2 = num2 / 2
    end

    # mem access times 3 plus addition
    sum = num1 + num2

    # 300 times two mem access and multiplicaton
    300.times { sum = sum * 2 }

    #plus one or two more 
    # total 2710 or 2712
    sum * 5
end

p chop_add(1,1) == 2.0
p chop_add(10,1) == 11.0
p chop_add(1,-5) == -4.0




def iter_add(num1, num2)
    #3n
    num1.times { num2 += 1}
    #+1
    num2
    #3n + 1
end

p iter_add(1, 1) == 2.0
p iter_add(10, 1) == 11.0
p iter_add(1, -5) == -4.0


#chop add is better for bigger numbers but iter_add will grow with input size over 900

# Asymptotic means approaching a value arbitruarly close
# in this case the value is infinity behavior of a line
# logorythmic lines will slope up to a point before leveling off
# exponential curves upward

#the most dominant term. in 3n + 1, as n gets bigger the 1 won't matter.
#which term crushes the other?

#when evaluating you can ignore constants or reduce them to 1. 
# so the 2710 steps in the chop method get reduced to 1 Asymptotically speaking.
#Asymptotic Anaylsis is about the curve of the line.

# Ignore constants
# most dominant term (only as fast as your bottleneck)