# frozen_string_literal: true
require_relative "../lib/greedy/minimum_sum_to_couple.rb"

RSpec.describe Greedy::MinSumToCouple do
  it "MinSumToCouple class" do
    input_array = [7, 2, 3, 4, 5, 6]

    min_sum = Greedy::MinSumToCouple.new.run(input_array)
    expect(min_sum).to eq(10)
  end
end
