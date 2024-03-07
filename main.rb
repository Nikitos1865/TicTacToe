require './player'
require './board'
require './game'

p1 = Player.new("bibo", "X")
p2 = Player.new("babo", "O")
board = Board.new

game = Game.new(board, p1, p2)
    

p1.play(board, 5)

puts board

