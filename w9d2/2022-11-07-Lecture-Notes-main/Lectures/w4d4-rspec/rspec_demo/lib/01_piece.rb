class Piece
  def initialize(color, board, pos)
    raise "Invalid color" if ![:white, :black].include?(color)
    raise "Invalid position" unless board.valid_pos?(pos)
    @color = color
    @pos = pos
    @board = board
  end

  attr_reader :color, :pos, :board 
  attr_writer :pos

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