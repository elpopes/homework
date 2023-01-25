require 'byebug'

class Pet
  @@total_pets = 0

  def initialize(name)
    @name = name
  end

  def self.add_pet
    # @total_pets ||= 0
    @@total_pets += 1
  end

  def self.total_pets
    @@total_pets
  end

end

class Dog < Pet
  puts self # self in here is the Dog class

  # @@num_dogs = 0
  def self.doggie_things
    puts self # self in here is the Dog class
    # inside a class method, self is the class
  end

  def who_am_i?
    puts self # self in here is a dog instance
  end

  def initialize(name)
    super(name)
    @secret = "I'm a goat in disguise"
    self.class.add_pet
  end

  def sleep
    puts "sleeping!"
  end

  def eat
    puts "eating!"
  end

  def drink
    puts "drinking!"
  end

  # def trick
  #   puts "BACK FLIP!!"
  # end

  # def juggle(thing, num)
  #   num.times do
  #     puts "juggling #{thing}!"
  #   end
  # end

  def backflip(num = 1)
    num.times do 
      puts "backflipping"
    end
  end

  def self.create_tricks(*trick_names)
    # what is self here? Dog Class
    trick_names.each do |trick_name|
      # what about here? Dog Class
      define_method(trick_name) do |num = 1|
        # and here? An instance of the Dog class (i.e. doggo)
        num.times do 
          puts "#{trick_name}ing"
        end
      end
    end
  end

  # Dog.define_singleton_method(:class_method) do 

    # ...

  #end

  def do_this_then_that(this, that)
    self.send(this)
    self.send(that)
  end

  def do_this_with_args(this, *args)
    self.send(this, *args)
  end

  private

  attr_reader :secret

  def tell_secret
    puts "My secret is: #{@secret}"
  end
end

def self.my_attr_reader(*method_names)
  # For each method name...
    # define a method with that name that ... do 
      # grab the instance variables of that same name
        #.instance_variable_get("@#{method_name}")
end
