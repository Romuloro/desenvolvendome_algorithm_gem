# frozen_string_literal: true

require_relative "../../lib/arrayProblem/positive_negative"

RSpec.describe "ArrayProblem::PositiveNegative" do
  it "Positive Negative class 1" do
    arr = [1, -3, 5, 6, -3, 6, 7, -4, 9, 10]

    missing_number = ArrayProblem::PositiveNegative.new.run(arr)
    expect(missing_number).to eq([1, -3, 5, -3, 6, 6, 7, -4, 9, 10])
  end
end
