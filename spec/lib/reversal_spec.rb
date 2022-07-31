# frozen_string_literal: true

require_relative "../../lib/arrayProblem/reversal.rb"

RSpec.describe ArrayProblem::Reversal do
  it "Reversal in k units class " do
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    k = 3
    n = arr.length

    find_m = ArrayProblem::Reversal.new.run(arr, k, n)
    expect(find_m).to eq([8, 9, 10, 1, 2, 3, 4, 5, 6, 7])
  end
end
