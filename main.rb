# frozen_string_literal: true

require_relative 'lib/player'
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

player1 = Player.new('O')

p player1.horizontal_result(board)
