# def do_three_times(object, method_name)
#     3.times { object.send(method_name) }
# end

# class Dog
#     def bark
#         puts "Woof!"
#     end 
# end

# dog = Dog.new
# do_three_times(dog, :bark)

# class Dog
#     def self.makes_sound(name)
#         define_method(name) { puts "#{name}!" }
#     end

#     makes_sound(:woof)
#     makes_sound(:bark)
#     makes_sound(:grr)
# end

class Pet
    attr_reader :name
    @@total_pets = 0
    def initialize(name)
        @name = name
    end

    def self.add_pet
            @@total_pets += 1
    end

    def self.total_pets
        @@total_pets
    end

end

class Dog < Pet
    puts "Dog class: #{self}" 
    def initialize(name)
        super
        @secret = "I'm a goat"
        self.class.add_pet
    
    end 

    @@num_dogs = 0

    def self.doggie_things
        puts self
    end

    def who_am_i?
        puts self
    end

    def sleep
        puts "#{@name} snores, snorts, and sleeps"
    end

    def drink
        puts "#{@name} drinks from his bowl"
    end

    def eat
        puts "#{@name} eats his food"
    end

    def trick
        puts "#{@name} rolls over"
    end

    def self.create_tricks(*trick_names)
        trick_names.each do |trick_name|
            define_method(trick_name) do |num=1|
                num.times do
                    puts "#{@name} #{trick_name}"
                end
            end
        end
    end

    def juggle(thing, num)
        num.times do
            puts "#{@name} juggles #{thing}"
        end
    end

    def do_this_then_that(first_method, second_method)
        self.send(first_method)
        self.send(second_method)
    end

    def do_this_with_args(method_name, *args)
        self.send(this, *args)
    end

    private
    attr_reader :secret

    def tell_secret
        puts "my secret is: #{@secret}"
    end

end

instance_variable_get('@secret')
# => "I'm a goat"
# doggo.instance_variable_set('@secret', "I'm a cat")
# => "I'm a cat"
# doggo.instance_variable_get(:@secret)
# => "I'm a cat"


# Dog.define_sigleton_method(:total_dogs) do
#     @@num_dogs
# end


def self.my_attr_reader(*names)
    names.each do |name|
        define_method(name) do
            instance_variable_get("@#{name}")
        end
    end
end