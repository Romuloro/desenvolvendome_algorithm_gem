module Search
  class MissingNUmber
      def missingNumber(array)
          n = array.length
          sum_array = array.sum
          total = (n + 1)*(n + 2)/2
          return total - sum_array
      end
  end

end