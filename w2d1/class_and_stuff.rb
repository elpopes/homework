class Dog
    attr_accessor :name, :bark
    def initialize(name, bark)
        @name = name
        @bark = bark
    end

    def speak
        "#{@name} says #{@bark}"
    end

    def self.growl
        "Grrrr"
    end

    def self.whos_louder(dog_1, dog_2)
        if dog_1.bark.length > dog_2.bark.length
            return dog_1.name
        elsif dog_1.bark.length < dog_2.bark.length
            return dog_2.name
        else
            return nil
        end
    end
end



class Monster
    attr_accessor :type, :power, :element
    def initialize(type, power, element)
        @type = type
        @power = power
        @element = element
    end

    def kill
        "#{rand(1..100)} people are dead."
    end

end

freddy = Monster.new("ghoul", "nightmare", "electric")

freddy.element = "fire"

class Cat
    attr_accessor :name, :color, :age
  
    def initialize(name, color, age)
      @name, @color, @age = name, color, age
    end
  
    def pur
      "purrrrrr"
    end
end
  
  sennacy = Cat.new("Sennacy", "brown", 7)
  sennacy.pur

def start_family
    members_hash = Hash.new{|h, k| h[k] = []}
    system("clear")
    puts "Enter family name"
    family_name = gets.chomp.capitalize
    puts "Enter parent 1 name"
    parent_1 = members_hash[gets.chomp.capitalize]
    puts "Enter parent 2 name"
    parent_2 = members_hash[gets.chomp.capitalize]
    puts "Enter first child"
    child_1 = members_hash[gets.chomp.capitalize]
    puts "Enter second child"
    child_2 = members_hash[gets.chomp.capitalize]
    puts "Enter cat name"
    cat = members_hash[gets.chomp.capitalize]
end




class Family
    attr_accessor :name, :size, :parent_1, :parent_2, :child_1, :child_2, :cat
    def initialize(name, members_hash)
        @name = name
        @size = members_hash.size
        @parent_1 = Parent.new(members_hash[parent_1])
        @parent_2 = Parent.new(members_hash[parent_2])
        @child_1 = Child.new(members_hash[child_1])
        @child_2 = Child.new(members_hash[child_2])
        @cat = Cat.new(members_hash[cat])
    end
end

class Parent
    attr_accessor :name  
    def initialize(name, age, job)

        
        
    end
end