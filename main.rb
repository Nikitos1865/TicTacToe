# frozen_string_literal: true

require './player'
require './board'
require './game'

p1 = Player.new('bibo', 'X')
p2 = Player.new('babo', 'O')
board = Board.new

game = Game.new(board, p1, p2)

game.welcome
game.name_players
game.show_points

game.play
