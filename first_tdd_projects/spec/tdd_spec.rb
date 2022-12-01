require_relative "../lib/tdd.rb"

describe "#my_uniq" do

    context "with valid argument" do
        it "should accept array as argument" do
            expect { my_uniq([1,2,3]) }.to_not raise_error
        end
    end

    it 'should return an array of only unique elements' do
        expect(my_uniq([1,1,1])).to eq([1])
        expect(my_uniq(["a","b","c","a"])).to eq(["a","b","c"])
    end

    it 'should return a new array' do
        arr = [1,2,3]
        expect(my_uniq(arr)).to_not be(arr)
    end
end