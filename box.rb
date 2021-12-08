class Box

  attr_reader :tiles

  def initialize(tiles)
    @tiles = tiles
  end

  def shut?
    @tiles.all?(false)
  end

  def can_flip_for?(value)
    false
  end

end
