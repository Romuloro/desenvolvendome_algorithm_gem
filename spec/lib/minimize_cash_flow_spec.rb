# frozen_string_literal: true

require_relative "../../lib/greedy/minimize_cash_flow"

RSpec.describe "Greedy::JobSequencingProblem" do
  it "Job Sequencing Problem return c a e " do
    graph = [ [0, 1000, 2000],
              [0, 0, 5000],
              [0, 0, 0] ]

    sum_result = Greedy::MinimizeCashFlow.new.run(graph)
    expect(sum_result).to eq(["Person 1 pays 4000 to Person 2", "Person 0 pays 3000 to Person 2"])
  end
end
