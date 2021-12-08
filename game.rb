class Game

  WELCOME_MESSAGE = "Welcome to Shut da Box!"
  WIN_MESSAGE = "You shut da box!"
  LOSE_MESSAGE = "Game over, you did not shut da box."

  attr_reader :box, :dice

  def initialize(box, dice)
    @box = box
    @dice = dice
  end
  
  def roll_dice
    dice.each(&:roll!)
  end

  def sum_dice
    dice.map(&:value).reduce(:+)
  end

  def over?
    box.shut? || box.can_flip_for?(self.sum_dice)
  end

  def print_tiles
    box.tiles().each do |tile|
      print ' |' + tile.to_s + '| '
    end
  end

  def print_dice_values
    dice.each do |die|
      print "#{die.value} "
    end
  end

  def play
    self.print_tiles
    print "\nYou rolled: "
    self.print_dice_values
    puts "\nWhich tiles would you like to flip (separate by spaces): "
    tiles_to_flip = gets.chomp
    self.roll_dice
  end

  def get_result_messsage
    self.over? ? WIN_MESSAGE : LOSE_MESSAGE
  end

end
