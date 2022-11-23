def get_third_element(array)
    array[2]
end
#   As you hopefully deduced, this function takes in an array and returns the third element:
#   In truth, however, get_third_element does not actually care if you pass it an array; all it cares about is that the received argument responds to the [] operator. So you could also do this:
  
str = "duck"
#   => "duck"
str.is_a?(Array)
#   => false
get_third_element(str)
#   => "c"
#   or even this:
  
h = {2 => "second element"}

h.is_a?(Array)

get_third_element(h)
# "second element"
#   In short: with duck typing, what matters is that the argument you pass to get_third_element responds like an Array, regardless of its actual class.



class Duck
    def initialize(name)
        @name = name
    end

    def quack
        puts "#{@name} says `Quack!`"
    end
    end

class DuckHunter
    def initialize(name)
        @name = name
    end

    def quack
        puts "#{@name} makes a fake `Quack!`"
    end
end

}}class Goose
    def initialize(name)
        @name = name
    end
end

def make_quack(duck)
    if duck.respond_to?(:quack)
        duck.quack
    else
        puts "That's not a duck!"
    end


    
    
end

 