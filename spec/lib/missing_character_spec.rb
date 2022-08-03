# frozen_string_literal: true

require_relative "../../lib/stringProblem/missing_character.rb"

RSpec.describe StringProblem::MissingCharacter do
  it "Missing character return alyz" do
    str = "The quick brown fox jumps over the dog"

    find_m = StringProblem::MissingCharacter.new.run(str)
    expect(find_m).to eq("alyz")
  end
  it "Missing character return adglvyz" do
    str = "The quick brown fox jumps"

    find_m = StringProblem::MissingCharacter.new.run(str)
    expect(find_m).to eq("adglvyz")
  end
end
