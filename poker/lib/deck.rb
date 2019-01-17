require_relative "card.rb"

class Deck 
    SUIT = ("1".."10").to_a + %w(J Q K A)
    attr_reader :cards
    
    def initialize
        @cards = Deck.populate
    end

    def self.populate 
        deck = []
        
        SUIT.each {|value| deck << Card.new(:red, :hearts, value)}
        SUIT.each {|value| deck << Card.new(:red, :diamonds, value)}
        SUIT.each {|value| deck << Card.new(:black, :clubs, value)}
        SUIT.each {|value| deck << Card.new(:black, :spades, value)}

        deck
    end 

    def shuffle 
        self.cards.shuffle!
    end 
end 

if __FILE__ == $PROGRAM_NAME
    p Deck.new 
end