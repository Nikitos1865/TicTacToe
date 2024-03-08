# frozen_string_literal: true

class Board
  attr_accessor :board

  def initialize
    self.board = {
      1 => ' ',
      2 => ' ',
      3 => ' ',
      4 => ' ',
      5 => ' ',
      6 => ' ',
      7 => ' ',
      8 => ' ',
      9 => ' '
    }
  end

  def to_s
    s1 = String.new("       #{board[1]} | #{board[2]} | #{board[3]}\n      -----------")
    s2 = String.new("       #{board[4]} | #{board[5]} | #{board[6]}\n      -----------")
    s3 = String.new("       #{board[7]} | #{board[8]} | #{board[9]}\n")
    "#{s1}\n#{s2}\n#{s3}"
  end

  def mark_board(string, key)
    board[key] = string
  end

  def clear_board
    (1..9).each do |a|
      mark_board(a, ' ')
    end
  end

  def example_board
    s1 = String.new("       #{board.keys[0]} | #{board.keys[1]} | #{board.keys[2]}\n      -----------")
    s2 = String.new("       #{board.keys[3]} | #{board.keys[4]} | #{board.keys[5]}\n      -----------")
    s3 = String.new("       #{board.keys[6]} | #{board.keys[7]} | #{board.keys[8]}\n")
    "#{s1}\n#{s2}\n#{s3}"
  end

  def mark_board(num, char)
    board[num] = char
  end

  def show_coordinate(num)
    board[num]
  end

  # This method checks if there is a win on the board, and returns 1 if player 1 is the winner
  # -1 if player 2 is the winner, and 0 if there is no winner yet
  def check_win
    # These are all combinations of potential wins
    arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    arr_with_win = []
    arr.each do |mini_array|
      arr_to_check = [board[mini_array[0]], board[mini_array[1]], board[mini_array[2]]]
      if arr_to_check.all?('X')
        arr_with_win.push(1)
      elsif arr_to_check.all?('O')
        arr_with_win.push(-1)
      else
        arr_with_win.push(0)
      end
    end
    if arr_with_win.include?(1)
      1
    elsif arr_with_win.include?(-1)
      -1
    else
      0
    end
  end

  def check_board_full?
    return false if board.values.include?(' ')

    true
  end
end
