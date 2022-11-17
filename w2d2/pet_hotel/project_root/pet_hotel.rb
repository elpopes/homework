require_relative "cat"
require_relative "./other_animals/dog.rb"

class PetHotel
    def initialize(name)
        @name = name
        @guests = []
    end

    def check_in(guest)
        @guests << guest
    end
end




hotel = PetHotel.new("THis is a hotel for cats!")

cat_1 = Cat.new("whisky")
cat_2 = Cat.new("george")
dog = Dog.new("Peaches")
hotel.check_in(cat_1)
hotel.check_in(cat_2)
hotel.check_in(dog)
p hotel
