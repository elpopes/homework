require_relative "walkable"

class Robot
    include Walkable

    def initialize(name)
      @name = name
    end
  
    # def walk
    #   puts "*#{name} is walking*"
    # end
  
    private
    attr_reader :name
  
end

robot = Robot.new("Jeffrey")
robot.walk