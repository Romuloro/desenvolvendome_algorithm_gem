# frozen_string_literal: true

module ArrayProblem
  class ReorderIndex
    def run(array, index)
      n = array.length - 1
      t = [0] * n

      (0..n).each do |i|
        t[index[i]] = array[i]
      end

      range_integer_ = (0..n).each do |j|
        array[j] = t[j]
        index[j] = j
      end

      array
    end
  end
end
