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
      list_index - 5
    end
    result
  end
end
