# frozen_string_literal: true

require_relative "../../lib/dateProblem/find_minute"

RSpec.describe "DateProblem::FindMinute" do
  it "Fibonacci search return 22:22" do
    time = "21:39"
    x = 43

    missing_number = DateProblem::FindMinute.new.run(time, x)
    expect(missing_number).to eq("22:22")
  end
  it "Fibonacci search return 22:22" do
    time = "12:43"
    x = 21

    missing_number = DateProblem::FindMinute.new.run(time, x)
    expect(missing_number).to eq("13:04")
  end
  it "Fibonacci search return 05:33" do
    time = "20:39"
    x = 534

    missing_number = DateProblem::FindMinute.new.run(time, x)
    expect(missing_number).to eq("05:33")
  end
end
