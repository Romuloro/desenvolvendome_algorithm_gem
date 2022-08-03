# frozen_string_literal: true

require_relative "../../lib/search/linear_search"

RSpec.describe Search::LinearSearch do
  it "Linear Search class choice include in array" do
    input_array = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]
    choice = 110

    find_choice = Search::LinearSearch.new.run(input_array, choice)
    expect(find_choice).to eq(6)
  end
  it "Linear Search class choice does not include in array" do
    input_array = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]
    choice = 0

    find_choice = Search::LinearSearch.new.run(input_array, choice)
    expect(find_choice).to eq(-1)
  end
end
