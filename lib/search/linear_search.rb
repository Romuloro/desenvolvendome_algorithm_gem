# frozen_string_literal: true

module Search
  class LinearSearch
    def run(array, choice)
      array.each do |value|
        return array.index(value) if value == choice
      end
      -1
    end
  end
end
