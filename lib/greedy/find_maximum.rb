module Greedy
  class FindMaximum
    def run(array1, array2, array3)
      len1 = array1.length - 1
      len2 = array2.length - 1
      len3 = array3.length - 1
      sum1 = array1.sum
      sum2 = array2.sum
      sum3 = array3.sum
      element1 = 0
      element2 = 0
      element3 = 0

      while true do
        if (element1 == len1 or element2 == len2 or element3 == len3)
          return false
        end

        if (sum1 == sum2 and sum2 == sum3)
          return sum1
        end

        if (sum1 >= sum2 and sum1 >= sum3)
          sum1 -= array1[element1]
          element1 += 1
        elsif (sum2 >= sum1 and sum2 >= sum3)
          sum2 -= array2[element2]
          element2 += 1
        elsif (sum3 >= sum2 and sum3 >= sum1)
          sum3 -= array3[element3]
          element3 += 1
        end
      end
    end
  end
end
