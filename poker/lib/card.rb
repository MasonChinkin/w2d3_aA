class Card 
    attr_reader :suit, :value
    def initialize(color, suit, value)
        @color = color
        @suit = suit 
        @value = value 
        @public = false
    end 

    def inspect
        p "#{self.suit} #{self.value}"
    end 
end 