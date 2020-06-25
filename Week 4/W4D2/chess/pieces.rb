require 'singleton'
class Pieces
    def initialize(color, board, pos) 
        @color = color
        @board = board
        @pos = pos 
    end    
end 

class NullPieces < Pieces
    include Singleton
    def initialize(color = nil, board = nil, pos = []) 
        super 
    end    
end 


