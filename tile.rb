class Tile

    attr_reader :value, :flipped

    def initialize(value)
        @value = value
        @flipped = false
    end

    def flip!
        @flipped = !@flipped
    end

    def to_s
        @value.to_s
    end

end
