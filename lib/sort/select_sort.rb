module Sort
  class SelectSort
    def run(array)
      n = (array.length) -1
      (0..n).each { |i|
        idx = i
        (i + 1..n).each { |j|
          idx = j if array[idx] > array[j]
        }
        array[i], array[idx] = array[idx], array[i]
      }
      array
    end
  end
end
