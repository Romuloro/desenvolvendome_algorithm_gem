require "spec_helper"
require "./Algorithm_nvl2/count_sort.rb"

arr = [-5, -10, 0, -3, 8, 5, -1, 10]

describe "Count Sort function" do
    it "Maximize array function run" do
        count = countSort(arr)
        expect(count).to eq([-10, -5, -3, -1, 0, 5, 8, 10])
    end
end