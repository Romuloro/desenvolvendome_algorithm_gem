# frozen_string_literal: true

module Greedy


  class Graph
    attr_accessor :v_num, :graph
    def initialize(v_num)
      @v_num = v_num
      @graph = []
    end

    def addEdge(u, v, w)
      @graph.append([u, v, w])
    end

    def kruskalMST
      result = []
      i = 0
      e = 0
      @graph = @graph.sort { |a, b| a[2] <=> b[2] }
      parent = []
      rank = []

      (0..@v_num).each do |node|
        parent.append(node)
        rank.append(0)
      end

      while e < @v_num - 1
        u, v, w = @graph[i]
        i += 1
        x = find(parent, u)
        y = find(parent, v)

        next unless x != y

        e += 1
        result.append([u, v, w])
        union(parent, rank, x, y)
      end

      minimum_cost = 0

      result.each do |_u, _v, weight|
        minimum_cost += weight
      end
      minimum_cost
    end

    private

    def find(parent, i)
      return i if parent[i] == i

      find(parent, parent[i])
    end

    def union(parent, rank, x, y)
      xroot = find(parent, x)
      yroot = find(parent, y)

      if rank[xroot] < rank[yroot]
        parent[xroot] = yroot
      elsif rank[xroot] > rank[yroot]
        parent[yroot] = xroot
      else
        parent[yroot] = xroot
        rank[xroot] += 1
      end
    end
  end
end
