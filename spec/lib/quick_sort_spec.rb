# frozen_string_literal: true

require_relative "../../lib/sort/quick_sort"

RSpec.describe "Quick sort array function" do
  it "Quick sort array function return [1, 5, 7, 8, 9, 10]" do
    array = [10, 7, 8, 9, 1, 5]
    select_sort = Sort::QuickSort.new.run(array, 0, array.length - 1)
    expect(select_sort).to eq([1, 5, 7, 8, 9, 10])
  end
  it "Quick sort array function return [1, 2, 3, 4, 5, 6, 7, 8, 11]" do
    array = [4, 2, 8, 3, 1, 5, 7, 11, 6]
    select_sort = Sort::QuickSort.new.run(array, 0, array.length - 1)
    expect(select_sort).to eq([1, 2, 3, 4, 5, 6, 7, 8, 11])
  end
end
