#UNIIFIED MODELING LANGUAGE
# A visual way of describing the relationship
# between different objects in a system. 
# Association is a "has a" relationship
# Piece is parent of pawn. and Game
# is associated with Board becuase 
# Game requires board.

# Class is drawn in UML with 3 things:
# Name.
# Set of attributes
# Set of methods.
# Attributes are marked public+, private-, protected#.
# class methods are underlines.


class Klass
        include Singlton
        ## it's a module ensuring only one instance
        ## of that class can be created.
end


class BoxOffice
        def initialize(num_seats, show_title)
          @num_seats = num_seats
          @show_title = show_title
          @tickets_sold = 0
        end
    
        def sell_ticket
          # logic for the ticket selling process goes here
    
          update_tickets_sold
        end
    
        private
    
        def update_tickets_sold
          @tickets_sold += 1
        end
end
    
      tkts = BoxOffice.new(2000, "Rent")

class Dance
        attr_reader :style

        def initialize(style = "Tap")
                @style = style
        end
end

class Ballet < Dance
        def initialize(technique)
                @technique = technique
                super("Ballet")
        end
end

class Swing < Dance
        def initialize(form)
                @form = form
                super
        end
end

bolshoi = Ballet.new("Vaganova")
west_coast_swing = Swing.new("West Coast")

class EngineStalledError < StandardError
end

class CollisionOccurredError < StandardError
end

def drive_car
  # engine may stall, collision may occur
end

begin
  drive_car
rescue EngineStalledError => e
  puts "Rescued from engine stalled!"
  retry
rescue CollisionOccurredError => e
  puts "Rescued from collision!"
ensure
  puts "Car stopped."
end