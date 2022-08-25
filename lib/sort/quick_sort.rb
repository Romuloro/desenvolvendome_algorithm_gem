# frozen_string_literal: true

module Sort
  class QuickSort
    def run(array, low, high)
      if low < high
        pi = aux_partition(array, low, high)
        run(array, low, pi - 1)
        run(array, pi + 1, high)
      end
      array
    end

    def aux_partition(array, l, h)
      low = l
      high = h
      if (l != h) && (l < h)
        pivot = array[l]
        low += 1
        while low <= high
          array[high], array[low] = array[low], array[high] if (array[high] < pivot) && (array[low] > pivot)
          if array[low] <= pivot
            low += 1
          elsif array[high] >= pivot
            high -= 1
          end
        end
      end
      array[l], array[high] = array[high], array[l]
      high
    end
  end
end
