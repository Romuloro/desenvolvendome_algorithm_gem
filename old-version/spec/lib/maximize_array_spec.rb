require "spec_helper"
require "./Algorithm_nvl2/maximize_array.rb"

arr = [-2, 0, 5, -1, 2]

describe "Maximize array function" do
    it "Maximize array function run" do
        max_array = maximizeArray(arr, 4)
        expect(max_array).to eq(10)
    end
end