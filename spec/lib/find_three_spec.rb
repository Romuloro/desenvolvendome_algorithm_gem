# frozen_string_literal: true

require_relative "../../lib/arrayProblem/find_three.rb"

RSpec.describe ArrayProblem::FindThree do
  it "Find Three class" do
    arr = [12, 45, 1, -1, 45, 54, 23, 5, 0, -10]

    find_m = ArrayProblem::FindThree.new.run(arr)
    expect(find_m).to eq([54, 45, 23])
  end
end
