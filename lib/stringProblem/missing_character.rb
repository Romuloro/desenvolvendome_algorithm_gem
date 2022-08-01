# frozen_string_literal: true

module StringProblem
  class MissingCharacter
    $max_char = 26

    def run(str)
      present = Array.new(26, false)

      (0..(str.length - 1)).each do |i|
        if (str[i] >= "a") && (str[i] <= "z")
          present[str[i].ord - "a".ord] = true
        elsif (str[i] >= "A") && (str[i] <= "Z")
          present[str[i].ord - "A".ord] = true
        end
      end

      res = ""

      (0..$max_char).each do |i|
        res += (i + "a".ord).chr if present[i] == false
      end
      res
    end
  end
end
