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