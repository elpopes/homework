class Board
    attr_reader :max_height
    def self.build_stacks(num_stacks)
        Array.new(num_stacks){Array.new}
    end

    def initialize(num_stacks, max_height)
        raise 'rows and cols must be >=4' if num_stacks < 4 || max_height < 4
        @max_height = max_height
        @stacks = Board.build_stacks(num_stacks)
    end

    def print
        @stacks.each { |stack| p stack }
    end

    def add(token, stack_ids)
        if @stacks[stack_ids].length < @max_height
            @stacks[stack_ids] << token
            return true
        else
            return false
        end
    end

    def vertical_winner?(token)
        @stacks.any? {|stack| @max_height == stack.count {|ele| ele == token}}
    end

    def horizontal_winner?(token)
        (0...@stacks.length).any? {|index| @stacks.all? {|stack| stack[index] == token}}
    end

    def winner?(token)
        vertical_winner?(token) || horizontal_winner?(token)
    end
end
