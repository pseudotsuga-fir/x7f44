require_relative 'game'
require_relative 'box'
require_relative 'die'

TILE_COUNT = 9
DICE_COUNT = 2
DICE_SIDES = 6

dice = (1..DICE_COUNT).map { |i| Die.new(DICE_SIDES) }
box = Box.new(TILE_COUNT)

game = Game.new(box, dice)

puts Game::WELCOME_MESSAGE

game.start!
game.play until game.over?

puts game.results
