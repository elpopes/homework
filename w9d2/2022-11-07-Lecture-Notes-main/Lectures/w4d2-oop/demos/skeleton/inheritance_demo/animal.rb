require "byebug"
# require_relative "walkable"

class Animal
      # include Walkable
      def initialize(name)
        @name = name
        @age = 0
        @height = 1
      end
    
      def eat(food)
        puts "*#{name} eats the #{food}*"
      end

      # def walk
      #   puts "*#{name} is walking*"
      # end
    
      private
      attr_reader :name
end

