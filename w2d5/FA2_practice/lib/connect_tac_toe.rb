require_relative 'board'
require_relative 'player'

class ConnectTacToe

    def initialize(n_stacks, max_height)
        @board = Board.new(n_stacks, max_height)
        @player_1, @player_2 = Player.new('y'), Player.new('b')
        @current_player = @player_1
    end

    def switch_players!
        @current_player == @player_1 ? @current_player = @player_2 : @current_player = @player_1
    end

    def play_turn
        move = @current_player.get_stack_index
        token = @current_player.token
        @board.add(token, move)
        switch_players!
    end

    def play
        until @board.winner?(@player_1.token) || @board.winner?(@player_2.token)
            @board.print
            self.play_turn
            p "--------------------"
        end

        self.switch_players!
        @board.print
        p @current_player.token + " has won!"
    end
end
