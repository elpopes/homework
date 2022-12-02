class Piece
    attr_reader :color, :pos, :board
    attr_writer :pos
    def initialize(color, board, pos)
        raise "Invalid color" unless color == :white || color == :black
        raise "Invalid position" unless board.valid_pos?(pos)
        @color = color
        @pos = pos
        @board = board
    end

    def symbol
        raise NotImplementedError
    end

    def to_s
        " #{self.symbol} "
    end

    def empty?
        false
    end
end