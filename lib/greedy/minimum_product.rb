# frozen_string_literal: true

module Greedy
  class MininumProduct
    def run(array)
      n = array.length - 1
      infinity_max = Float::INFINITY
      infinity_neg = -1 * infinity_max
      count_neg = 0
      count_zero = 0
      prod = 1

      return array[0] if n == 1

      (0..n).each do |i|
        if (array[i]).zero?
          count_zero += 1
          next
        end

        if (array[i]).negative?
          count_neg += 1
          infinity_neg = [infinity_neg, array[i]].max
        end

        infinity_max = [infinity_max, array[i]].min if (array[i]).positive?

        prod *= array[i]
      end

      return 0 if (count_zero == n) || (count_neg.zero? && count_zero.positive?)

      return min_pos if count_neg.zero?

      prod = (prod / infinity_neg).to_i if (count_neg & 1).zero? && (count_neg != 0)
      prod
    end
  end
end
