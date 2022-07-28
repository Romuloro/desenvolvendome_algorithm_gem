require "spec_helper"
require "./Algorithm_nvl2/find_maximum.rb"

stack1 = [ 3, 2, 1, 1, 1 ]
stack2 = [ 4, 3, 2 ]
stack3 = [ 1, 1, 4, 1 ]
stack_e = []


describe "Find maximum function" do
    it "Find maximum function run" do
        find = findMaximum(stack1, stack2, stack3)
        expect(find).to eq(5)
    end

    it "Find maximum function if empety arrays" do
        find = findMaximum(stack_e, stack_e, stack_e)
        expect(find).to eq(0)
    end
end