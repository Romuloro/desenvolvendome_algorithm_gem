# frozen_string_literal: true

require_relative "../../lib/greedy/job_sequencing_problem"

RSpec.describe "Greedy::JobSequencingProblem" do
  it "Job Sequencing Problem return c a e " do
    arr = [['a', 2, 100], ['b', 1, 19], ['c', 2, 27], ['d', 1, 25], ['e', 3, 15]]
    k = 3

    sum_result = Greedy::JobSequencingProblem.new.run(arr, k)
    expect(sum_result).to eq(["c","a","e"])
  end
  it "Job Sequencing Problem return c a e " do
    arr = [['a', 2, 20], ['b', 1, 10], ['c', 1, 40], ['d', 1, 30]]
    k = 2

    sum_result = Greedy::JobSequencingProblem.new.run(arr, k)
    expect(sum_result).to eq(["c","a"])
  end
end
