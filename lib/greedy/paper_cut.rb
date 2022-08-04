# frozen_string_literal: true

module Greedy
  class PaperCut
    def run(l, a)
      result = 0
      rem = 0

      l, a = a, l if l < a

      while a.positive?
        result += (l / a).to_i
        rem = (l % a).to_i
        l = a
        a = rem
      end
      result
    end
  end
end
