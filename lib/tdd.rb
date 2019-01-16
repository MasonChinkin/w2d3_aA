 class Array
    def my_uniq
        check_arr = []
        len = self.length
        len.times do |i|
            check_arr << self[i] unless check_arr.include?(self[i])
        end
        check_arr
    end

    def two_sum
        answer_arr = []
        self.each_with_index do |e1, i1|
            self.each_with_index do |e2, i2|
                if i2 > i1 && e1 + e2 == 0
                    answer_arr << [i1,i2]
                end
            end
        end
        answer_arr
    end

    def my_transpose
        transposed = Array.new(self[0].length) {[]}

        self.each_with_index do |row, row_i|
            column_i = 0
            row.each do
                transposed[column_i] << row[column_i]
                column_i += 1
            end 
        end 
        
        transposed
    end

    def stock_picker
        buy_sell = []
        price_diff = 0
        self.each_with_index do |e1, i1|
            self.each_with_index do |e2, i2|
                if i2 > i1
                    this_price_diff = e2 - e1
                    if this_price_diff > price_diff
                        price_diff = this_price_diff
                        buy_sell = [i1,i2] 
                    end
                end
            end
        end
        buy_sell
    end

 end