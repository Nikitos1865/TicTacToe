# frozen_string_literal: true

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
    puts 'WELCOME TO TIC-TAC-TOE!'
    puts 'This game works by two players taking turns and picking where they want to place their X and O'
    puts 'The places are represented by these numbers: '
    puts board.example_board
  end

  def name_players
    puts 'Player 1, please enter your name:'
    name1 = gets.chomp
    player1.name = name1
    puts 'Player 2, please enter your name: '
    name2 = gets.chomp
    player2.name = name2
  end

  def show_points
    puts "\n"
    puts "#{player1.name} has: #{player1.points} points"
    puts "#{player2.name} has: #{player2.points} points"
  end

  def show_board
    puts board
  end

  def check_valid_play?(num)
    return true if num >= 1 && num <= 10 && board.show_coordinate(num) == ' '

    false
  end

  def invalid_play
    puts 'Invalid play, try again'
  end

  def play
    p1s_turn = true
    while board.check_win.zero?
      valid_play = false
      if p1s_turn == true
        puts "It's #{player1.name}'s turn, choose a square to play from 1-9"
        while valid_play == false
          num = gets.to_i
          if check_valid_play?(num)
            player1.play(board, num)
            p1s_turn = false
            valid_play = true
          else
            invalid_play
          end
          puts board
        end
      else
        puts "It's #{player2.name}'s turn, choose a square to play from 1-9"
        valid_play = false
        while valid_play == false
          num = gets.to_i
          if check_valid_play?(num)
            player2.play(board, num)
            p1s_turn = true
            valid_play = true
          else
            invalid_play
          end
          puts board

        end
      end
      if board.check_board_full? == true && board.check_win.zero?
        puts 'The game is a deadlock, clearing the board and starting anew'
        board.clear_board
        puts board
        show_points
      elsif board.check_win == 1
        puts "#{player1.name} wins!"
        player1.add_point
        show_points
        board.clear_board
      elsif board.check_win == -1
        puts "#{player2.name} wins!"
        player2.add_point
        show_points
        board.clear_board
      end

    end
  end
end
