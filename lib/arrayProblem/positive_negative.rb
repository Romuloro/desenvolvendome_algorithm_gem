# frozen_string_literal: true

module ArrayProblem
  class PositiveNegative
    def run(array)
      n = array.length - 1
      positive = 0
      negative = 1

      loop do
        positive += 2 while (positive < n) && (array[positive] >= 0)
        negative += 2 while (negative < n) && (array[negative] <= 0)

        break unless (positive < n) && (negative < n)

        temp = array[positive]
        array[positive] = array[negative]
        array[negative] = temp
      end
      array
    end
  end
end
