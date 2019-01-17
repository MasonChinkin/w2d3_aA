require_relative "card.rb"

class Deck 
    attr_reader :cards
    
    def initialize
        @cards = Deck.populate
    end

    def self.populate 
        deck = []
        
        suit = ("1".."10").to_a + %w(J Q K A)
        
        suit.each {|value| deck << Card.new(:red, :hearts, value)}
        suit.each {|value| deck << Card.new(:red, :diamonds, value)}
        suit.each {|value| deck << Card.new(:black, :clubs, value)}
        suit.each {|value| deck << Card.new(:black, :spades, value)}

        deck
    end 
end 

if __FILE__ == $PROGRAM_NAME
    p Deck.new 
end