require_relative "../lib/search/binary_search.rb"

RSpec.describe "Binary Search class" do
  it "Binary Search class" do
    arr = [1, 11, 21, 31, 41, 51, 61, 71, 81, 91]
    ch = 61
    h = arr.length - 1

    find_m = Search::BinarySearch.new.run(arr,ch, 0, h)
    expect(find_m).to eq(6)
  end
end
