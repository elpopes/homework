module Slideable

  # HORIZONTAL_DIRS stores an array of horizontal directions
  HORIZONTAL_DIRS = [
    [:dx, :dy], # left
    [:dx, :dy], # right
    [:dx, :dy], # up (vertical)
    [:dx, :dy]  # down (vertical)
  ].freeze

  # DIAGONAL_DIRS stores an array of diagonal directions
  DIAGONAL_DIRS = [
    [:dx, :dy], # up + left
    [:dx, :dy], # up + right
    [:dx, :dy], # down + left
    [:dx, :dy]  # down + right
  ].freeze


  def horizontal_dirs
    # getter for HORIZONTAL_DIRS
  end

  def diagonal_dirs
    # getter for DIAGONAL_DIRS
  end

  # should return an array of places a Piece can move to
  def moves
    # create an array to collect moves

    # iterate over each of the directions in which a slideable piece can move
      # use the Piece subclass' #move_dirs method to get this info
      # for each direction, collect all the possible moves in that direction
        # and add them to your moves array
        # (use the grow_unblocked_moves_in_dir helper method)

    # return the final array of moves (containing all possible moves in all directions)
  end


  private

  def move_dirs
    # subclass implements this
    raise NotImplementedError # this only executes if we have forgotten to implement it in our SubClass
  end

  # this helper method is only responsible for collecting all moves in a given direction
  # the given direction is represented by two args, the combination of a dx and dy
  def grow_unblocked_moves_in_dir(dx, dy)
    # create an array to collect moves

    # get the piece's current row and current column

    # in a loop:
      # continually increment the piece's current row and current column to generate the next position
      # stop looping if the next position is invalid (not on the board); the piece can't move in this direction
      # if the next position is empty, the piece can move here, so add the next position to our moves array
      # if the next position is occupied with a piece of the opposite color, the piece can move here (to capture the opposite piece), so we still add the next position to the moves array
        # but, the piece cannot continue to move past this piece, stop looping
      # if the next position is occupied with a piece of the same color, stop looping

    # return the final moves array
  end
end

# NOTE: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!



