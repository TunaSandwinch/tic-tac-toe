# frozen_string_literal: true

require_relative 'play_game'
# all the necessarry things to monitor the game state of each player goes here
class Player < PlayGame
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
