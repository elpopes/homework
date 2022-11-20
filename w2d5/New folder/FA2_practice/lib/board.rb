class Board

    def self.build_stacks(n_stacks)
        Array.new(n_stacks){Array.new}
    end

    def initialize(n_stacks, max_height)
        @max_height = max_height
        raise "rows and cols must be >= 4" if n_stacks < 4 || max_height < 4
        @n_stacks = n_stacks
        @stacks = Board.build_stacks(n_stacks)
    end
    
    attr_reader :max_height, :n_stacks

    def print
        @stacks.each { |stack| p stack }
    end

    def add(token, stack_id)
        if max_height > @stacks[stack_id].length
            @stacks[stack_id] << token
            return true
        else
            return false
        end
    end

    def vertical_winner?(token)
        @stacks.any? {|stack| stack.length == max_height && stack.all?(token)}
    end

    def horizontal_winner?(token)
        (0..n_stacks).any? {|index| n_stacks == @stacks.count {|stack| stack[index] == token}}
    end

    def winner?(token)
        vertical_winner?(token) || horizontal_winner?(token)
    end


end
