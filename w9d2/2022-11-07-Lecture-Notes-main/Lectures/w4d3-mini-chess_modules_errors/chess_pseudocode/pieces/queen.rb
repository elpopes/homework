require_relative 'piece'
require_relative 'slideable'

class Queen < Piece
  include Slideable
  

  def symbol
    '♛'.colorize(color)
  end

  protected

  def move_dirs
    # return the directions in which a Queen can move
    # a Queen can move horizontally, vertically, and diagonally
  end
end


# NOTE: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!
