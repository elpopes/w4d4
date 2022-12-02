def my_uniq(arr)
    ele_hash = Hash.new(0)
    arr.each do |ele|
        ele_hash[ele] = "?"
    end

    ele_hash.keys
end

def two_sum(arr)
    new_array = []
    arr.each_with_index do |ele, i|
        arr[i+1..-1].each_with_index do |ele_2|
            if ele + ele_2 == 0 
                new_array << [i, arr.index(ele_2)]
            end
        end
    end
    new_array
end

def my_transpose(arr)
    new_array = []

    arr.each_with_index do |ele1, idx1|
        sub_arr = []
        arr.each_with_index do |ele2, idx2|
            sub_arr << arr[idx2][idx1]
        end
        new_array << sub_arr
    end


    new_array
end

def stock_picker(prices)
    max_profit = 0
    days = []
    prices.each_with_index do |p_1, d|
        prices[d+1..-1].each do |p_2|
            if p_2 - p_1 > max_profit
                max_profit = p_2 - p_1 
                days = [d, prices.index(p_2)]
            end
        end
    end
    days
end