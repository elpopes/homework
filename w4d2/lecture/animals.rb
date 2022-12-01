class Animal
        def initialize(name)
                @name = name
        end

        def walk
                puts "*#{name} is walking*"
        end

        def eat(food)
                puts "*##{name} eats the #{food}"
        end

        private
        attr_reader :name
end

class Dog < Animal
        ## child class will have access to methods fefubed on their Parent class
        def initialize

end

class Cat < Animal
       #creates implicit dependencies
       #can make it hard to know where variables are coming
       #conflict from mixins
       def initialize(name, color)
                super(name)
                @color = color
       end
        
        def introduce
                puts "#{name} meow"
        end       
end

