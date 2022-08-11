# frozen_string_literal: true

module StringProblem
  class CommonCharacters
    $max_char = 26
    def run(strings)
      result = []
      n = strings.length - 1
      primary = Array.new($max_char, true)

      (0..n).each do |i|
        secondary = Array.new($max_char, false)

        (0..(strings[i].length - 1)).each do |j|
          secondary[strings[i][j].ord - "a".ord] = true if primary[strings[i][j].ord - "a".ord]
        end

        (0..($max_char - 1)).each do |k|
          primary[k] = secondary[k]
        end
      end

      (0..$max_char).each do |i|
        if primary[i]
          choice = format("%c", (i + "a".ord))
          result.append(choice)
        end
      end
      result.join("")
    end
  end
end
