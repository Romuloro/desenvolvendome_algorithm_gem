# frozen_string_literal: true

module Greedy
  class MinSum
    def run(arr1, arr2, k)
      n = arr1.length
      diff = 0
      res = 0

      (0..n - 1).each do |i|
        pro = arr1[i] * arr2[i]
        res += pro

        if pro.negative? && (arr2[i]).negative?
          temp = (arr1[i] + (2 * k)) * arr2[i]
        elsif pro.negative? && (arr1[i]).negative?
          temp = (arr1[i] - (2 * k)) * arr2[i]
        elsif pro.positive? && (arr1[i]).negative?
          temp = (arr1[i] + (2 * k)) * arr2[i]
        elsif pro.positive? && (arr1[i]).positive?
          temp = (arr1[i] - (2 * k)) * arr2[i]
        end

        d = (pro - temp).abs

        diff = d if d > diff
      end

      res - diff
    end
  end
end
