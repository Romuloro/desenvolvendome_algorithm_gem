# frozen_string_literal: true

require_relative "../lib/sort/select_sort.rb"

RSpec.describe "Select sort array function" do
  it "Select sort array function" do
    arr = [64, 25, 12, 22, 11]
    select_sort = Sort::SelectSort.new.run(arr)
    expect(select_sort).to eq([11,12, 22, 25, 64])
  end
end
