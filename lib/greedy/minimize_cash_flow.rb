# frozen_string_literal: true

module Greedy
  class MinimizeCashFlow
    $n = 3

    def minCashFlowRec(amount)
      result_ = []

      (0..$n - 1).each do |_i|
        mxCredit = amount.index(amount.max)
        mxDebit = amount.index(amount.min)

        break if (amount[mxCredit]).zero? && (amount[mxDebit]).zero?

        min = [-amount[mxDebit], amount[mxCredit]].min
        amount[mxCredit] -= min
        amount[mxDebit] += min

        result_.append("Person #{mxDebit} pays #{min} to Person #{mxCredit}")
      end

      result_
    end

    def run(graph)
      amount = Array.new($n, 0)

      (0..$n - 1).each do |k|
        (0..$n - 1).each do |i|
          amount[k] += (graph[i][k] - graph[k][i])
        end
      end
      p amount

      minCashFlowRec(amount)
    end
  end
end
