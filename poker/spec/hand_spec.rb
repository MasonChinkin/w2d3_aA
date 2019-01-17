require "rspec"
require "hand"

describe Hand do
    subject(:straight_flush_hand) {Hand.new}

    describe '#initialize'
    describe '#evaluate'
    describe '#straight_flush' do
        before(:each) do
            straight_flush_hand.cards_in_hand << Card.new(:red,:heart,'1')
            straight_flush_hand.cards_in_hand << Card.new(:red,:heart,'2')
            straight_flush_hand.cards_in_hand << Card.new(:red,:heart,'3')
            straight_flush_hand.cards_in_hand << Card.new(:red,:heart,'4')
            straight_flush_hand.cards_in_hand << Card.new(:red,:heart,'5')
        end

        it 'returns true if hand is holding a straight flush' do
            expect(straight_flush_hand.straight_flush?).to be true
        end

        it 'returns false if hand is NOT holding a straight flush' do
            straight_flush_hand.cards_in_hand[-1] = Card.new(:red,:heart,'6')
            expect(straight_flush_hand.straight_flush?).to be false
        end
    end
end