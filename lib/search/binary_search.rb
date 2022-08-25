module Search
  class BinarySearch
    def run (array, choice, low, high)
      if high >= low
        mid = (high + low) / 2
        if array[mid] == choice
          return mid
        elsif array[mid] < choice
          return run(array, choice, (mid +1), high)
        else
          return run(array, choice, low, (mid-1))
        end
      else
        return -1
      end
    end
  end
end
