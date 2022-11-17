class Cat
    attr_accessor :name, :color, :age
  
    def initialize(name, color, age)
      @name, @color, @age = name, color, age
    end
  
    def pur
      "purrrrrr"
    end
end