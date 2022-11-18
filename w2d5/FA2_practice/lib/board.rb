class Board
    attr_reader :max_height, :n_stacks
    def self.build_stacks(n_stacks)
        Array.new(n_stacks){Array.new}
    end

    def initialize(n_stacks, max_height)
        raise 'rows and cols must be >= 4' if max_height < 4 || n_stacks < 4
        @max_height = max_height
        @stacks = Board.build_stacks(n_stacks)
        @n_stacks = n_stacks
    end

    def add(token, stack_id)
        if @stacks[stack_id].length < @max_height
            @stacks[stack_id] << token
            return true
        else
            return false
        end
    end

    def vertical_winner?(token)
        @stacks.any? {|stack| @max_height == stack.count {|pos| pos == token}}
    end

    def horizontal_winner?(token)
        (0...@n_stacks).each {|index| return true if @n_stacks == @stacks.count {|stack| token == stack[index]}}
        return false
    end

    def winner?(token)
        vertical_winner?(token) || horizontal_winner?(token)
    end

    def print
        @stacks.each { |stack| p stack }
    end
end
