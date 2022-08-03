# frozen_string_literal: true

require_relative "../../lib/dateProblem/find_future.rb"

RSpec.describe DateProblem::FindFuture do
  it "Find Future class return ['23/5/56645', '4/12/233']" do
    arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
    queries = ["23/3/4345", "12/3/2"]

    count = DateProblem::FindFuture.new.run(arr, queries)
    expect(count).to eq(["23/5/56645", "4/12/233"])
  end
  it "Find Future class return ['23/5/56645', '-1', '4/12/233']" do
    arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
    queries = ["23/3/4345", "4/4/34234234", "12/3/2"]

    count = DateProblem::FindFuture.new.run(arr, queries)
    expect(count).to eq(["23/5/56645", "-1", "4/12/233"])
  end
  it "Find Future class return ['-1']" do
    arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
    queries = ["4/4/34234234"]

    count = DateProblem::FindFuture.new.run(arr, queries)
    expect(count).to eq(["-1"])
  end
end
