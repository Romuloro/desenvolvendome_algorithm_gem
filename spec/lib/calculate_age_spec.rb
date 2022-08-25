# frozen_string_literal: true

require_relative "../../lib/dateProblem/calculate_age.rb"

RSpec.describe DateProblem::CalculateAge do
  it "Calculate Age class" do
    birth_date = "16/12/2009"

    present_date = "07/12/2017"

    find_m = DateProblem::CalculateAge.new.run(present_date, birth_date)
    expect(find_m).to eq("Years: 7, Month: 11, Day: 22")
  end
end
