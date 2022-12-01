# require_relative "walkable"

class Robot
include Walkable
include Runable
        def initialize(name)
                @name = name
        end

        private
        attr_reader :name

end


module Walkable
        def walk
                puts "#{name} is walking"
        end
end

module Runable
        def run
                puts "#{name} is running"
        end
end
