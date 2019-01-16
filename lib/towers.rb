require 'byebug'
class Toh
    attr_accessor :board
    def intialize
        @board = [[1,2,3],[],[]]
    end

    def play
    end

    def get_input
    end

    def display
    end

    def won?
        if self.board[0].empty? && (self.board[1].empty? || self.board[2].empty?)
            return true
        end
        false
    end

    def valid_move?
    end
end