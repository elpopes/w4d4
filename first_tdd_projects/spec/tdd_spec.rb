require_relative "../lib/tdd.rb"

describe "#my_uniq" do

    context "with valid argument" do

        it "should accept array as argument" do
            arr = [1,2,3]
            expect(my_uniq(arr)).to eq(Array)
        end
        
    end


    context "with invalid argument" do
        it "should raise error if not given an array" 
    end
end