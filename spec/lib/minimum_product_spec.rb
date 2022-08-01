# frozen_string_literal: true

require_relative "../../lib/greedy/minimum_product.rb"

RSpec.describe Greedy::MininumProduct do
  it "Greedy::MininumProduct return -24" do
    a = [-1, -1, -2, 4, 3]

    find_m = Greedy::MininumProduct.new.run(a)
    expect(find_m).to eq(-24)
  end
  it "Greedy::MininumProduct return -1" do
    a = [-1, 0]

    find_m = Greedy::MininumProduct.new.run(a)
    expect(find_m).to eq(-1)
  end
  it "Greedy::MininumProduct return -1" do
    a = [0, 0, 0]

    find_m = Greedy::MininumProduct.new.run(a)
    expect(find_m).to eq(0)
  end

end
