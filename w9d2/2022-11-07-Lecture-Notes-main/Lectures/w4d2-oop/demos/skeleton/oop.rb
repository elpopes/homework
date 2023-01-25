require "byebug"

class Dog
  def initialize(name)
    @name = name
  end

  def introduce
    puts "#{name} bork bork"
  end

  def fetch(item)
    puts "*#{name} excitedly fetches #{item} and wants you to throw it again*"
  end

  def eat(food)
    puts "*#{self.name} eats the #{food}*"
  end

  def sniff(other_dog)
    puts "*#{name} sniffs #{other_dog.name}'s butt. interesting.*"
  end

  def rename(new_name)
    self.name = new_name
    # name = new_name
    # debugger
  end

  def get_name
    p name
    p self.name # This would fail in old ruby
  end

  private
  # protected
  attr_reader :name
  # attr_writer :name

  def name=(new_name)
    # debugger
    @name = new_name
  end

end

# mochi = Dog.new("Mochi")
marco = Dog.new("Marco")
# marco.introduce
# marco.fetch("ball")
# marco.eat("bone")
# marco.sniff(mochi)

# marco.name = "Fluffy"
# p marco
# marco.rename("Fluffy")
# p marco

marco.get_name
marco.name





















class Cat
  def initialize(name)
    @name = name
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






