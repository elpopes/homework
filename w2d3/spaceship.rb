# We can use the spaceship operator <=> to relatively compare two values.
# Spaceship operator combines all other comparators into one.
# We can use the spaceship operator to get an unambigious signal
# to where a and b lie on the number line relatively.

# Given the expression a <=> b:
# -1 id a is less than base
# 0 if ==
# 1 if a is greater than b

# 7 <=> 2     # => 1
# 7 <=> 7     # => 0
# 2 <=> 7     # => -1
# 10 <=> 2    # => 1
# -5 <=> 10   # => -1
# -3 <=> -9   # => 1

def bubble_sort(array, &prc)
    sorted = false
    until sorted == true
        sorted = true

        (0...array.length - 1).each do |i|
            if prc.call(array[i], array[i+1]) == 1
                array[i], array[i+1] = array[i+1], array[i]
                sorted = false
            end
        end
    end
    array
end

p bubble_sort((1..100).to_a.shuffle) { |a, b| a <=> b}
p (bubble_sort(("hgdsgkjhdyiuisysiyiasioyuyhrvf".split("")).to_a) do |a, b| 
    alpha = ("a".."z").to_a 
    alpha.index(a) <=> alpha.index(b)
end)

