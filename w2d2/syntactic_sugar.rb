class Person
    attr_reader :first_name, :last_name
  
    def initialize(first_name, last_name, age)
      @first_name = first_name
      @last_name = last_name
      @age = age
    end
  
    def ==(other_person)
      self.last_name == other_person.last_name
    end
end
  
  person_1 = Person.new("Jane", "Doe", 20)
  person_2 = Person.new("John", "Doe", 18)
  person_3 = Person.new("John", "Wayne", 18)
  
  # Calling Person#== without any syntactic sugar is awkward:
  p person_1.==(person_2)     # true
  
  # With syntactic sugar, it's much more elegant:
  p person_1 == person_2      # true
  p person_2 == person_3      # false


class Queue
    def initialize
        @line = []
    end

    def [](pos)
        @line = []
    end

    def []=(position, ele)
        @line[position] = ele
    end

    def add(ele)
        @line << ele
        nil
    end
   
    def remove
        @line.shift
    end
end

grocery_checkout = Queue.new
grocery_checkout.add("jim")
grocery_checkout.add("alonzo")

# grocery_checkout.[](0) ## equivelant to what's below
# grocery_checkout.[](1)

grocery_checkout[0]
grocery_checkout[1]


# Let's call Queue#[]= without syntactic sugar:
grocery_checkout.[]=(0, "Grace")
p grocery_checkout    #<Queue:0x007fe7a7a29ec8 @line=["Grace", "Alonzo"]>

# Let's call Queue#[]= again, but with syntactic sugar:
grocery_checkout[1] = "Grace"
p grocery_checkout    #<Queue:0x007fe7a7a29ec8 @line=["Grace", "Grace"]>

