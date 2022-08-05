# frozen_string_literal: true

module Search
  class FibonacciSearch
    def run(array, x)
      n = array.length
      fib_mm_m2 = 0
      fib_mm_m1 = 1
      fib_m = fib_mm_m2 + fib_mm_m1

      while fib_m < n
        fib_mm_m2 = fib_mm_m1
        fib_mm_m1 = fib_m
        fib_m = fib_mm_m2 + fib_mm_m1
      end

      offset = -1

      while fib_m > 1
        i = [offset + fib_mm_m2, n - 1].min

        if array[i] < x
          fib_m = fib_mm_m2
          fib_mm_m1 -= fib_mm_m2
          fib_mm_m2 = fib_m - fib_mm_m1
        else
          return i
        end
      end

      return n - 1 if fib_mm_m1 && (array[n - 1] == x)

      -1
    end
  end
end
