# frozen_string_literal: true

require_relative "../../lib/greedy/maximize_array"

RSpec.describe Greedy::MaximizeArray do
  it "Maximize arrayProblem function run" do
    arr = [-2, 0, 5, -1, 2]
    max_array = Greedy::MaximizeArray.new.run(arr, 4)
    expect(max_array).to eq(10)
  end
end
