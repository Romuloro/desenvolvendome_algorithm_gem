# frozen_string_literal: true

require_relative "../../lib/search/find_missing_number"

RSpec.describe "Search::MissingNUmber" do
  it "Find the missing number function" do
    arr = [1, 2, 3, 5]

    missing_number = Search::MissingNUmber.new.missingNumber(arr)
    expect(missing_number).to eq(4)
  end
end
