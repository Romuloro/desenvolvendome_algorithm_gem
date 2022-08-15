# frozen_string_literal: true

module Greedy
  class FractionalKnapSackBase
    attr_accessor :cost, :val, :wt

    def initialize(wt, val, ind)
      @wt = wt
      @val = val
      @ind = ind
      @cost = (val / wt).floor
    end
  end

  class FractionalKnapSack
    def run(wt, val, capacity)
      value = []

      (0..(wt.length - 1)).each do |i|
        value.append(Greedy::FractionalKnapSackBase.new(wt[i], val[i], i))
      end

      value_n = value.sort { |a, b| b.cost <=> a.cost }

      p value_n

      totalValue = 0

      value_n.each do |i|
        curWt = (i.wt).to_f
        curVal = (i.val).to_f

        if (capacity - curWt) >= 0
          capacity -= curWt
          totalValue += curVal
        else
          fraction = capacity/curWt
          totalValue += (curVal * fraction)
          capacity -= (curWt * fraction).to_i
          break
        end
      end

      totalValue
    end
  end
end
