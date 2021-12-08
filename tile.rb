class Tile

    def initialize(value)
        @value = value
        @flipped = false
    end

    def flip
        @flipped = !@flipped
    end

end
