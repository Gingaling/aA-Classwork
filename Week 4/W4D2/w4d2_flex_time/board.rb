
#demo for flex time of chess day 1
#highlights OOP approach of chess

class Board
    attr_reader :rows, :sentinel

    def initialize
        build_board
        # build board - initialize 2-d array with nils
        # create the 2-d array
        # add pawn pieces to specific rows
        # add other pieces to back row
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end 

    def []=(pos, piece)
        row, col = pos
        @rows[row][col] = piece
    end
    
    def move_piece(start_pos, end_pos)
        #check if there is a piece at the start_pos
        #check if end pos is empty
        #check if both pos is within bounds (valid_pos?)

        #reassign to the end pos to the piece from the start pos
        #start_pos to nil
    
    end 

    def valid_pos?(pos)
        # check if coordinate in pos is within bounds 
    end 

    def add_piece(piece, pos)
        #key into the pos and set to the piece
    end

    # possible helper methods - 
    def build_grid
        # create the 2-d array
        # for each color, we call our below helper methods
    end

    def fill_pawns(color)
        # for each color, we know what index it should be on
            # ex for black pieces, the i = 1
            # ex for white pieces, the i = 6
        # loop through 8 times 
        # place a pawn piece at those indices
    end 

    def fill_back_row(color)
        # back_pieces = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
        # iterate through each of the back pieces and place those pies in corresponding indices
        # for black pieces, i = 0, for white i = 7
    end
end