require "spec_helper"
require "./Algorith_nvl3/minimum_sum_product_two_arrays.rb"

a = [ 2, 3, 4, 5, 4 ]
b = [ 3, 4, 2, 3, 2 ]
k = 3

describe "Find the missing number function" do
    it "Find the missing number function" do
        minimumSumProduct = minimumSumProductTwoArrays(a, b, k)
        expect(minimumSumProduct).to eq(25)
    end
end