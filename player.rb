# frozen_string_literal: true

require './board'
require './game'
class Player
  attr_accessor :name, :char, :points

  def initialize(nym, char)
    self.name = nym
    self.char = char
    self.points = 0
  end

  def play(board, square)
    board.mark_board(square, char)
  end

  def add_point
    self.points += 1
  end
end
