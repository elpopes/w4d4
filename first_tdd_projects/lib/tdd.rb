def my_uniq(arr)
    ele_hash = Hash.new(0)
    arr.each do |ele|
        ele_hash[ele] = "?"
    end

    ele_hash.keys
end