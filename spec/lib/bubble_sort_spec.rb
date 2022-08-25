# frozen_string_literal: true

require_relative "../../lib/sort/bubble_sort.rb"

RSpec.describe Sort::BubbleSort do
  it "Count Sort Class" do
    arr = [-5, -10, 0, -3, 8, 5, -1, 10]
    count = Sort::BubbleSort.new.run(arr)
    expect(count).to eq([-10, -5, -3, -1, 0, 5, 8, 10])
  end
end
