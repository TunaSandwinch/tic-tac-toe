# frozen_string_literal: true

# all the things that needs to play the game goes here
class PlayGame
  attr_accessor :piece

  def initialize(type)
    @piece = type
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
