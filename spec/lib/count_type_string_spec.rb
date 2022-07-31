# frozen_string_literal: true

require_relative "../../lib/stringProblem/count_type_string.rb"

RSpec.describe StringProblem::CountTypesString do
  it "Reversal in k units class " do
    str = "#GeeKs01fOr@gEEks07"

    find_m = StringProblem::CountTypesString.new.run(str)
    expect(find_m).to eq("Upper case letters: #{5}, Lower case letters: #{8}, Number: #{4}, Special characters: #{2}")
  end
end
