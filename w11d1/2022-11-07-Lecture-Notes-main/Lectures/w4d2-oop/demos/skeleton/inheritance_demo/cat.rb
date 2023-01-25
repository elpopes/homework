require_relative 'animal'
require_relative 'walkable'

class Cat < Animal
    include Walkable
    # include Runable

    def initialize(name, fur_color)
    #   @name = name
      super(name)
      @fur_color = fur_color
    end
  
    def introduce
      puts "#{name} meow"
    end
  
    def eat(food)
      puts "*#{name} eats the #{food}*"
    end
  
    private
    attr_reader :name
  end

tom = Cat.new("Tom", "Grey")
p tom
tom.walk
# tom.run