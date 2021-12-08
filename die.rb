class Die

  attr_reader :number_of_sides, :value

  def initialize(number_of_sides)
    @number_of_sides = number_of_sides
    @value = 1
  end

  def roll!
    @value = Random.rand(1..number_of_sides)
  end

end
