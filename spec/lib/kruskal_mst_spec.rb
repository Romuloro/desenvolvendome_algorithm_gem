# frozen_string_literal: true

require_relative "../../lib/greedy/kruskal_mst.rb"

RSpec.describe Greedy::Graph do
  it "Greedy::Graph return 19" do
    g = Greedy::Graph.new(4)
    g.addEdge(0, 1, 10)
    g.addEdge(0, 2, 6)
    g.addEdge(0, 3, 5)
    g.addEdge(1, 3, 15)
    g.addEdge(2, 3, 4)
    result_mst = g.kruskalMST

    expect(result_mst).to eq(19)
  end
  it "Greedy::Graph addEdge" do
    g = Greedy::Graph.new(1)
    g.addEdge(0, 1, 10)

    expect(g.graph[0]).to eq([0, 1, 10])
  end

end
