require "spec_helper"
require "./Algorith_nvl3/find_missing_number.rb"

arr = [1, 2, 3, 5]

describe "Find the missing number function" do
    it "Find the missing number function" do
        missing_number = missingNumber(arr)
        expect(missing_number).to eq(4)
    end
end