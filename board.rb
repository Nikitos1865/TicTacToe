class Board 
    attr_accessor :board
    def initialize
        self.board = {
            0 => "X", 
            1 => "O", 
            2 => "O",
            3 => "X", 
            4 => " ", 
            5 => " ",
            6 => " ", 
            7 => " ", 
            8 => " "
    }
    end 

    def to_s
        s1 = String.new("       #{self.board[0]} | #{self.board[1]} | #{self.board[2]}"+"\n"+"      -----------")
        s2 = String.new("       #{self.board[3]} | #{self.board[4]} | #{self.board[5]}"+"\n"+"      -----------")
        s3 = String.new("       #{self.board[6]} | #{self.board[7]} | #{self.board[8]}"+"\n")
        s1+"\n"+s2+"\n"+s3
    end 

    def mark_board(string, key)
        self.board[key] = string;
    end 

    def clear_board
        self.board.each_with_index {|val, key| board[key] = " "}
    end
end 

bord = Board.new(); 
puts bord.board;
puts bord 


bord.clear_board

bord.mark_board("X", 5)

puts bord 

