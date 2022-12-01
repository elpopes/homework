# piece holds all invars
# subs inherit all the attributes but differ in how move
# slidable, steppable, singleton
# why does singleton always get ignored?

# slideable moves until end or another piece.
# if opposite piece you stop in its place
# can also stop whenever they want
queen.pos = [3,3]

queen.moves = [2,2], [1,1] ##cont through all possible moves

move_dirs
horizontal_dirs
moves public


HORIZONTAL_DIRS = [
    [:dx, :dy] #left
    [:dx, :dy] #right
    [:dx, :dy] #up
    [:dx, :dy] #down
]

DIAGONAL_DIRS = [
    [:dx, :dy] #up + left
    [:dx, :dy] #up + right
    [:dx, :dy] #down + left
    [:dx, :dy] #down + right
].freeze

def horizontal_dirs #getters to access moves, good  practice to not dir access constants


end

def diagonal_dirs #getter for DIAGONAL_DIRS

end

# should return an array of places a piece can move to
def moves
    #create an array to collect moves
    #how to get moves? 
    #iterate over each direction in which a slidable piece can move
    #use subclasses move direction method
    #for each direction collect all possible moves in that dir.
    #use grow_unblocked_moves_in_dir helper method
    #return all possible moves

end

private

def move_dirs
    #throws error to programmer
    raise NotImplementedError
end

    #this helper  method is only responsible for collecting
    # all moves in a given direction. the given direction is
    #  represented by two args, the combo of a dx and dy
def grow_unblocked_moves_in_dir(dx, dy)
    # create and array to collect moves 
    # get the piece current row and curren column
    # increment in direction to check if piece is invalid
    # MAKE SURE GETTERS ARE AVAILABLE
    # don't forget to return
    # Can invoke methods from the piece from within the module methods and vice versa.
end


class Queen < Piece
    include Slideable
        
    def symbol
        '♕'.colorize(color)
    end

    protected

    def move_dirs

    end
    return the directions in which a queen can move
end


module Stepable
    def moves
        #create array to collect moves
        iterate through each of the pieces possible move move_diffs
        for each move diff increment the piece posto henerate a new positon 
        add the new position to the move array ifon the board and empty
        or ton the  oard and contains a piece of the opp color.
        end
    end

    def move_diffs
        raise NotImplementedError
    end
end