# frozen_string_literal: true

# this where the magic begins
class Player
  attr_accessor :piece

  def initialize(type)
    @piece = type
  end

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

  def vertical_win?(list)
    winning_combs = vertical_result(list)
    winning_combs.each do |winning_comb|
      return true if winning_comb == [piece, piece, piece]
    end
    false
  end

  def horizontal_win?(list)
    winning_combs = horizontal_result(list)
    winning_combs.each do |winning_comb|
      return true if winning_comb == [piece, piece, piece]
    end
    false
  end

  def right_diagonal_win?(list)
    return true if right_diagonal_result(list) == [piece, piece, piece]

    false
  end

  def left_diagonal_win?(list)
    return true if left_diagonal_result(list) == [piece, piece, piece]

    false
  end
end
