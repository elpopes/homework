def prime?(num)
    return false if num < 2
    (2...num).each do |i|
        if num % i == 0
            return false
        end
    end
    true
end

# desired output
p prime?(6) # => false
p prime?(8) # => false
p prime?(9) # => false
p prime?(2)   # => true
p prime?(7)   # => true
p prime?(11)  # => true
p prime?(1)   # => false
p prime?(0)   # => false
p prime?(-42) # => false