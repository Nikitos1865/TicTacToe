require './player'
require './board'

class Game
    attr_accessor :board, :player1, :player2
    
    def initialize(game_board, player1, player2)
        self.board = game_board
        self.player1 = player1
        self.player2 = player2
    end 

    def welcome
        puts "WELCOME TO TIC-TAC-TOE!"
    end 

    def name_players
        puts "Player 1, please enter your name:"
        name1 = gets
        self.player1.name = name1
        puts "Player 2, please enter your name: "
        name2 = gets
        self.player2.name = name2
    end 

    def show_points
        puts "Player 1 has: "+self.player1.points
        puts "Player 2 has: "+self.player2.points
    end

    def check_win(board)
        arr = Array.new([1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7])
        arr.each do |mini_array|
            arr_to_check = [board[mini_array[0]], board[mini_array[1]], board[mini_array[2]]]
            if arr_to_check.all?("X")
                puts 1
            elsif arr_to_check.all("O")
                puts -1
            else puts 0 
            end
        end 
    end 
end 
