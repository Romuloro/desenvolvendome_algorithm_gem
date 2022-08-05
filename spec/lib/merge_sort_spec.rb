# frozen_string_literal: true

require_relative "../../lib/sort/merge_sort"

RSpec.describe "Merge sort array function" do
  it "Merge sort array function" do
    arr = [38, 27, 43, 3, 9, 82, 10]
    select_sort = Sort::MergeSort.new.run(arr)
    expect(select_sort).to eq([3, 9, 10, 27, 38, 43, 82])
  end
end
