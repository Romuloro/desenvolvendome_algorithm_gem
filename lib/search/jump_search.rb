# frozen_string_literal: true

module Search
  class JumpSearch
    def run(array, _choice)
      n = array.length - 1
      step = Math.sqrt(n)
      prev = 0

      # arr_step = ([step, n].min - 1).to_i

      while array[([step, n].min - 1).to_i] < _choice
        prev = step
        step += Math.sqrt(n)
        return -1 if prev >= n
      end

      while array[prev.to_i] < _choice
        prev += 1
        return -1 if prev == [step, n].min
      end

      return prev.to_i if array[prev.to_i] == _choice

      -1
    end
  end
end
