# frozen_string_literal: true

require_relative "../../lib/greedy/paper_cut"

RSpec.describe "Greedy::PaperCut" do
  it "Paper cut class return 9" do
    a = 13
    b = 29

    sum_result = Greedy::PaperCut.new.run(a, b)
    expect(sum_result).to eq(9)
  end
  it "Paper cut class return 6" do
    a = 36
    b = 30

    sum_result = Greedy::PaperCut.new.run(a, b)
    expect(sum_result).to eq(6)
  end
end
