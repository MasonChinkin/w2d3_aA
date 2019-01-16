require 'towers.rb'

describe Toh do
    subject(:toh_game) {Toh.new}

    describe '#won?' do
        it 'registers won toh_game properly' do
            toh_game.board = [[],[1,2,3],[]]
            expect(toh_game.won?).to be true
        end

        it 'returns false if toh_game is not won' do
            expect(toh_game.won?).to be false
        end
    end
end