require_relative "deck.rb"
require 'byebug'

class Hand 
    attr_accessor :cards_in_hand
    def initialize
        @cards_in_hand = []
        # @best_combination = []
    end 

    def deal(*cards)
        self.cards_in_hand + cards
    end 

    def evaluate
        
    end 

    def straight_flush?
        debugger
        sorted = card_sort(self.cards_in_hand).map(&:value)
        start = Deck::SUIT.index(sorted[0])
        if sorted == Deck::SUIT[start..start + 4] &&
            sorted[0] != '10'
            # sorted.all? {|card| card.suit == sorted[0].suit}
            return true
        end
        false
    end

    def card_sort(arr)
        types = Deck::SUIT
        cards = arr
        cards.sort_by {|card| types.index(card.value)}
    end
end