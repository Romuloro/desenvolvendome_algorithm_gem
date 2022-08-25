# frozen_string_literal: true

require_relative "../../lib/arrayProblem/reorder_index"

RSpec.describe "ArrayProblem::ReorderIndex" do
  it "ArrayProblem::ReorderIndex return [40, 60, 90, 50, 70]" do
    arr = [50, 40, 70, 60, 90]
    index = [3, 0, 4, 1, 2]

    missing_number = ArrayProblem::ReorderIndex.new.run(arr, index)
    expect(missing_number).to eq([40, 60, 90, 50, 70])
  end

  it "ArrayProblem::ReorderIndex return [11, 10, 12]" do
    arr = [10, 11, 12]
    index = [1, 0, 2]

    missing_number = ArrayProblem::ReorderIndex.new.run(arr, index)
    expect(missing_number).to eq([11, 10, 12])
  end
end
