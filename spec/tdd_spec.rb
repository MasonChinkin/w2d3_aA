require 'tdd.rb'

describe 'tdd' do
    describe '#my_uniq' do
        let(:non_uniq_arr) {[1,1,2,3]}
        let(:uniq_arr) {[1,2,3]}

        it 'does not modify an array of unique items' do
            expect(uniq_arr.my_uniq).to eq(uniq_arr)    
        end

        it 'generates array of unique items from array containing non-unique items' do
            expect(non_uniq_arr.my_uniq).to eq(uniq_arr)
        end
    end

    describe '#two_sum' do
        let(:no_two_sums) {[1,1,2,3]}
        let(:has_two_sums) {[1,2,3,-1,-2]} # => [[0,3],[1,4]]

        it 'returns empty array if no two elements sum to zero' do
            expect(no_two_sums.two_sum).to eq([])
        end
        it 'returns array of indices where elements sum to zero' do
            expect(has_two_sums.two_sum).to eq([[0,3],[1,4]])
        end
    end

    describe '#my_transpose' do 
        let(:pre_transpose) {[[1, 2, 3], [1, 2, 3], [1, 2, 3]]}
        let(:post_transpose) {pre_transpose.transpose}

        it "returns transposed array" do 
            expect(pre_transpose.my_transpose).to eq(post_transpose)
        end
    end 

    describe "#stock_picker" do 
        let(:stock_history) {[45, 2, 10, 12, 1, 30]}

        it "returns pair of indices of the most profitable buy sell dates" do 
            expect(stock_history.stock_picker).to eq([4, 5])
        end 
    end
end