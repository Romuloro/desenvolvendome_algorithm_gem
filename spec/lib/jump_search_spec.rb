# frozen_string_literal: true

require_relative "../../lib/search/jump_search"

RSpec.describe "Search::JumpSearch" do
  it "Jump search return 11" do
    arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
    x = 55

    missing_number = Search::JumpSearch.new.run(arr, x)
    expect(missing_number).to eq(10)
  end
  it "Jump search return -1" do
    arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
    x = 56

    missing_number = Search::JumpSearch.new.run(arr, x)
    expect(missing_number).to eq(-1)
  end
end
