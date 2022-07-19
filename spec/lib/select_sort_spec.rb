require "spec_helper"
require "./Algorith_nvl3/select_sort.rb"

arr = [64, 25, 12, 22, 11]

describe "Select sort array function" do
    it "Select sort array function" do
        select_sort = selectSort(arr)
        expect(select_sort).to eq([11,12, 22, 25, 64])
    end
end