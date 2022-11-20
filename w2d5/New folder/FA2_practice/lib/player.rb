class Player
    attr_reader :token
    def initialize(token)
        @token = token
    end

    def get_stack_index
        p "player " + @token + ", enter a valid stack index"
        gets.chomp.to_i
    end
end
