module Greedy
  class MaximizeArray
    def run(array, n)
      soma = 0
      i = 0
      array.sort!

      while n.positive?
        if array[i] >= 0
          n = 0
        else
          array[i] = -1 * array[i]
          n -= 1
        end
        i += 1
      end

      soma = array.sum
    end
  end
end
