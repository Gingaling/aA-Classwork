require_relative "pieces.rb"
require_relative "cursor.rb"

class Board
 def initialize()
    @rows = Array.new(8){Array.new(8, NullPieces.instance)}
    @sentinels = NullPieces.instance
 end

 def [](pos)
    @rows[pos[0]][pos[1]]
 end

 def []=(pos, value)
    @rows[pos[0]][pos[1]] = value
 end

 def move_piece(start_pos, end_pos)
    piece = self[start_pos]
    self[start_pos] = @sentinels
    self[end_pos] = piece
    if self[start_pos] == @sentinels
        raise "No piece at start position!"
    elsif self[end_pos] != @sentinels
        raise "The piece cannot move to end position!"
    end

 end

end

b = Board.new
c = Cursor.new([0,0], Board)
