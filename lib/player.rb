# frozen_string_literal: true

# this where the magic begins
class Player
  attr_accessor :piece

  def initialize(type)
    @piece = type
  end

  def horizontal_result(list)
    result = []
    count = 0
    3.times do
      result.push(list[count..count + 2])
      count += 2
    end
    result
  end
end
