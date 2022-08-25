# frozen_string_literal: true

require_relative "../../lib/greedy/fractional_knapsack"

RSpec.describe "Greedy::JobSequencingProblem" do
  it "Job Sequencing Problem return c a e " do
    wt = [10, 40, 20, 30]
    val = [60, 40, 100, 120]
    capacity = 50

    maxvalue = Greedy::FractionalKnapSack.new.run(wt, val, capacity)
    expect(maxvalue).to eq(240)
  end
  it "Job Sequencing Problem return c a e " do
    wt = [10, 20, 30]
    val = [60, 100, 120]
    capacity = 50

    maxvalue = Greedy::FractionalKnapSack.new.run(wt, val, capacity)
    expect(maxvalue).to eq(240)
  end
end
