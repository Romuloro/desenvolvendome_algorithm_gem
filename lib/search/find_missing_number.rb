# frozen_string_literal: true

module Search
  class MissingNUmber
    def missingNumber(array)
      n = array.length
      sum_array = array.sum
      total = (n + 1) * (n + 2) / 2
      total - sum_array
    end
  end
end
