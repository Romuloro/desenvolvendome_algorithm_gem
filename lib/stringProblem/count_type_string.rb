# frozen_string_literal: true

module StringProblem
  class CountTypesString
    def run(string)
      upper = 0
      lower = 0
      number = 0
      special = 0
      string.chars.map do |char|
        if (char.ord >= 65) && (char.ord <= 90)
          upper += 1
        elsif (char.ord >= 97) && (char.ord <= 122)
          lower += 1
        elsif (char.ord >= 48) && (char.ord <= 57)
          number += 1
        else
          special += 1
        end
      end

      "Upper case letters: #{upper}, Lower case letters: #{lower}, Number: #{number}, Special characters: #{special}"
    end
  end
end
