# frozen_string_literal: true

require_relative "../../lib/greedy/find_maximum.rb"

RSpec.describe Greedy::FindMaximum do
  it "Find maximum function run" do
    stack1 = [3, 2, 1, 1, 1]
    stack2 = [4, 3, 2]
    stack3 = [1, 1, 4, 1]

    find_m = Greedy::FindMaximum.new.run(stack1, stack2, stack3)
    expect(find_m).to eq(5)
  end

  it "Find maximum function if empty arrays" do
    stack_e = []
    find_m = Greedy::FindMaximum.new.run(stack_e, stack_e, stack_e)
    expect(find_m).to eq(0)
  end
end
