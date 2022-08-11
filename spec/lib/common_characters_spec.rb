# frozen_string_literal: true

require_relative "../../lib/stringProblem/common_characters"

RSpec.describe StringProblem::CommonCharacters do
  it "StringProblem::CommonCharacters return ovos" do
    strings = [ "apple", "orange" ]

    day_result = StringProblem::CommonCharacters.new.run(strings)
    expect(day_result).to eq("ae")
  end
  it "DateProblem::DayWeek return 0" do
    strings = [ "geeksforgeeks", "gemkstones", "acknowledges", "aguelikes" ]

    day_result = StringProblem::CommonCharacters.new.run(strings)
    expect(day_result).to eq("egks")
  end
end
