# frozen_string_literal: true

module ArrayProblem
  class Reversal
    def run(array, k, n)
      n_array = aux(array, 0, (n - 1))
      n_array = aux(array, 0, (k - 1))
      n_array = aux(array, k, (n - 1))
    end

    private

    def aux(array, start, final)
      while start < final
        array[start], array[final] = array[final], array[start]
        start += 1
        final -= 1
      end
      array
    end
  end
end
