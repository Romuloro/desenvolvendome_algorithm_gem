# frozen_string_literal: true

module DateProblem
  class DayWeek
    def run(day, month, year)
      t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]

      year -= 1 if month < 3

      ((year + year / 4).floor - (year / 100).floor + (year / 400).floor + t[month - 1] + day) % 7
    end
  end
end
