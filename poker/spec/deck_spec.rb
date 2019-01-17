require "rspec"
require "deck"


describe Deck do 
    subject(:deck) {Deck.new}
    
    describe "#initialize" do
        
        it "generates array of playing card objects" do 
            expect(deck.cards.all? {|card| card.is_a?(Card)}).to be true
        end 
    end
end