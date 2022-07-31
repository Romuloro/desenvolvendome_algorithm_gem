# frozen_string_literal: true

module ArrayProblem
  class FindThree
    def run(array)
      max_array = []
      3.times do
        max_value = array.max
        max_array << max_value
        array.delete(max_value)
      end
      max_array
    end
  end
end
