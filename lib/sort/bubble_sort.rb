# frozen_string_literal: true

module Sort
  class BubbleSort
    def run(array)
      n = array.length - 1
      (0..n).each do |i|
        (0..(n - i - 1)).each do |j|
          array[j], array[j + 1] = array[j + 1], array[j] if array[j] > array[j + 1]
        end
      end
      array
    end
  end
end
