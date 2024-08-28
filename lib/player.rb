# frozen_string_literal: true

require_relative 'play_game'

# will determine wether a player wins as well if two players tied
class Player < PlayGame
  def player_win?
    return true if vertical_win? || horizontal_win? ||
                   right_diagonal_win? || left_diagonal_win?

    false
  end

  private

  def vertical_win?
    winning_combs = vertical_result
    winning_combs.each do |winning_comb|
      return true if winning_comb == [current_player, current_player, current_player]
    end
    false
  end

  def horizontal_win?
    winning_combs = horizontal_result
    winning_combs.each do |winning_comb|
      return true if winning_comb == [current_player, current_player, current_player]
    end
    false
  end

  def right_diagonal_win?
    return true if right_diagonal_result == [current_player, current_player, current_player]

    false
  end

  def left_diagonal_win?
    return true if left_diagonal_result == [current_player, current_player, current_player]

    false
  end
end
