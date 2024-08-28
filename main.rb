# frozen_string_literal: true

require_relative 'lib/player'

game = Player.new

game.board.each_index do |index|
  game.display_board
  game.make_move
  if index == 8
    if game.player_win?
      game.display_board
      p "Player #{game.current_player} Win!"
    else
      p 'Its a TIE!'
    end
  elsif index > 3
    if game.player_win?
      game.display_board
      p "Player #{game.current_player} Win!"
      break
    end
  end
  game.set_current_player
end
