class Minnow
        def initialize(initial_position)
                #keeps track of its own pos
                #this is the state of obj
                @position = initial_position
        end

        def eat
                puts "eat eat eat"
        end

        def swim
        #away from sharks
        end
end

class Shark
        
        ### this is something fish do. Put it in the fish class
        def eat

                puts "eat eat eat"
        end
        
        def swim
        # sharks and minnows "behave" differently
        #towards minnows
        end
end

class Employee
        def wage
                20_000
        end
end

class Manager < Employee
        def wage
                50_000
        end
end

class CEP < Manager
        def wage
                1_000_000
        end
end

def total_salary(employees)
        total = 0
        employees.each do |employee|
                total += employee.wage
        end
end

##maybe bad example. Don't introduce new subclass until:
## 2 diiferent subclasses of the base class AND
## the 2 subclasses have very different behavior.