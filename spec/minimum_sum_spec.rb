# frozen_string_literal: true

require_relative "../lib/greedy/minimum_sum.rb"

RSpec.describe "Greedy::MinimumSum" do

  it "Find the missing number function" do
    a = [ 2, 3, 4, 5, 4 ]
    b = [ 3, 4, 2, 3, 2 ]
    k = 3

    sumResult = Greedy::MinSum.new.run(a, b, k)
    expect(sumResult).to eq(25)
  end
end
