# frozen_string_literal: true

# all the things to navigate the game and also to get board information goes here
class PlayGame
  attr_accessor :piece

  def initialize(type)
    @piece = type
  end

  def player_move(type, board, position)
    board[position] = type
  end

  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts '-----------'
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts '-----------'
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  private

  def horizontal_result(list)
    result = [[], [], []]
    list_index = 0
    result.each do |item|
      3.times do
        item.push(list[list_index])
        list_index += 1
      end
    end
    result
  end

  def vertical_result(list)
    result = [[], [], []]
    list_index = 0
    result.each do |item|
      3.times do
        item.push(list[list_index])
        list_index += 3
      end
      list_index -= 8
    end
    result
  end

  def left_diagonal_result(list)
    result = []
    list_index = 0
    3.times do
      result.push(list[list_index])
      list_index += 4
    end
    result
  end

  def right_diagonal_result(list)
    result = []
    list_index = 2
    3.times do
      result.push(list[list_index])
      list_index += 2
    end
    result
  end
end
