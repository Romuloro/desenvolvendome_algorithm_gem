# frozen_string_literal: true

module Sort
  class SelectSort
    def run(array)
      n = array.length - 1
      (0..n).each do |i|
        idx = i
        (i + 1..n).each do |j|
          idx = j if array[idx] > array[j]
        end
        array[i], array[idx] = array[idx], array[i]
      end
      array
    end
  end
end
