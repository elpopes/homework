module Stepable
  def moves
    # create an array to collect moves

    # iterate through each of the piece's possible move_diffs

      # for each move_diff, increment the piece's position to generate a new position
      # add the new position to the moves array if:

        # on the board and empty
        # OR on the board and contains a piece of the opposite color

    # return the final array of moves
  end

  private

  def move_diffs
    # subclass implements this
    raise NotImplementedError # this only executes if we have forgotten to implement it in our subclass
  end
end



