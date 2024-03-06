class Board 
    attr_accessor :board
    def initialize
        self.board = {
            1 => " ", 
            2 => " ", 
            3 => " ",
            4 => " ", 
            5 => " ", 
            6 => " ",
            7 => " ", 
            8 => " ", 
            9 => " "
    }
    end 

    def to_s
        s1 = String.new("       #{self.board[1]} | #{self.board[2]} | #{self.board[3]}"+"\n"+"      -----------")
        s2 = String.new("       #{self.board[4]} | #{self.board[5]} | #{self.board[6]}"+"\n"+"      -----------")
        s3 = String.new("       #{self.board[7]} | #{self.board[8]} | #{self.board[9]}"+"\n")
        s1+"\n"+s2+"\n"+s3
    end 

    def mark_board(string, key)
        self.board[key] = string;
    end 

    def clear_board
        self.board.each_with_index {|val, key| board[key] = " "}
    end

    def example_board 
        s1 = String.new("       #{self.board.keys[0]} | #{self.board.keys[1]} | #{self.board.keys[2]}"+"\n"+"      -----------")
        s2 = String.new("       #{self.board.keys[3]} | #{self.board.keys[4]} | #{self.board.keys[5]}"+"\n"+"      -----------")
        s3 = String.new("       #{self.board.keys[6]} | #{self.board.keys[7]} | #{self.board.keys[8]}"+"\n")
        s1+"\n"+s2+"\n"+s3
    end 
end 

bord = Board.new()

puts bord.example_board


