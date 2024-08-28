# frozen_string_literal: true

# Things needed to play the game goes here
class PlayGame
  attr_accessor :player1, :player2, :board, :current_player

  def initialize
    @player1 = 'X'
    @player2 = 'O'
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @current_player = @player1
  end

  def display_board # rubocop:disable Metrics/AbcSize
    puts ''
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts '-----------'
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts '-----------'
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
    puts ''
  end

  def player_move
    puts "Player #{current_player}'s move"
    gets.chomp
  end

  def make_move
    move = player_move.to_i - 1
    if move.instance_of?(Integer) && move.between?(0, 8) && board[move].instance_of?(Integer)
      board[move] = current_player
    else
      p 'Invalid move! Try Again!'
      make_move
    end
  end

  def set_current_player
    self.current_player = if current_player == player2
                            player1
                          else
                            player2
                          end
  end

  def horizontal_result
    result = [[], [], []]
    list_index = 0
    result.each do |item|
      3.times do
        item.push(board[list_index])
        list_index += 1
      end
    end
    result
  end

  def vertical_result
    result = [[], [], []]
    list_index = 0
    result.each do |item|
      3.times do
        item.push(board[list_index])
        list_index += 3
      end
      list_index -= 8
    end
    result
  end

  def left_diagonal_result
    result = []
    list_index = 0
    3.times do
      result.push(board[list_index])
      list_index += 4
    end
    result
  end

  def right_diagonal_result
    result = []
    list_index = 2
    3.times do
      result.push(board[list_index])
      list_index += 2
    end
    result
  end
end
