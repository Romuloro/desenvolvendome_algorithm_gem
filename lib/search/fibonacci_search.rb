# frozen_string_literal: true

module Search
  class FibonacciSearch
    def run(array, x)
      n = array.length
      fibMMm2 = 0
      fibMMm1 = 1
      fibM = fibMMm2 + fibMMm1

      while fibM < n
        fibMMm2 = fibMMm1
        fibMMm1 = fibM
        fibM = fibMMm2 + fibMMm1
      end

      offset = -1

      while fibM > 1
        i = [offset + fibMMm2, n - 1].min

        if array[i] < x
          fibM = fibMMm2
          fibMMm1 -= fibMMm2
          fibMMm2 = fibM - fibMMm1
        else
          return i
        end
      end

      return n - 1 if fibMMm1 && (array[n - 1] == x)

      -1
    end
  end
end
