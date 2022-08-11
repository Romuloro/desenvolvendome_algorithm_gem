# frozen_string_literal: true

module Greedy
  class JobSequencingProblem
    def run(array, t)
      b = []
      job = []
      (0..(t - 1)).each do |j|
        sel = array.select { |v| v[1] == j + 1 }
        sort_a = sel.sort { |a, b| b[2] <=> a[2] }
        b.append(sort_a)
      end

      (0..(t - 1)).each do |k|
        job[k] = if b[k].length > 1
                   if b[k][0][2] < b[k + 1][0][2]
                     b[k + 1][1][0]
                   else
                     b[k][0][0]
                   end
                 else
                   b[k][0][0]
                 end
      end
      job
    end
  end
end
