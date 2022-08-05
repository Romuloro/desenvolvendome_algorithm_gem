# frozen_string_literal: true

require_relative "../../lib/search/fibonacci_search"

RSpec.describe "Search::FibonacciSearch" do
  it "Fibonacci search return 11" do
    arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
    x = 235

    missing_number = Search::FibonacciSearch.new.run(arr, x)
    expect(missing_number).to eq(11)
  end

  it "Fibonacci search return -1" do
    arr = [2, 3, 4, 10, 40]
    x = 11

    missing_number = Search::FibonacciSearch.new.run(arr, x)
    expect(missing_number).to eq(-1)
  end
end
