# frozen_string_literal: true

require_relative "../../lib/dateProblem/day_week"

RSpec.describe DateProblem::DayWeek do
  it "DateProblem::DayWeek return 4" do
    day = 13
    month = 7
    year = 2017

    day_result = DateProblem::DayWeek.new.run(day, month, year)
    expect(day_result).to eq(4)
  end
  it "DateProblem::DayWeek return 0" do
    day = 24
    month = 12
    year = 2456

    day_result = DateProblem::DayWeek.new.run(day, month, year)
    expect(day_result).to eq(0)
  end
  it "DateProblem::DayWeek return 3" do
    day = 15
    month = 8
    year = 2012

    day_result = DateProblem::DayWeek.new.run(day, month, year)
    expect(day_result).to eq(3)
  end
end
