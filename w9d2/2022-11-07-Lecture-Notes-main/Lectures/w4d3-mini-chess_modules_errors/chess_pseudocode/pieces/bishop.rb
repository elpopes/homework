require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
  include Slideable

  def symbol
    '♝'.colorize(color)
  end

  protected

  def move_dirs
    # return the directions in which a Bishop can move
    # a Bishop can move diagonally
  end
end
