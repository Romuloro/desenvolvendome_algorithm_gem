# frozen_string_literal: true

module DateProblem
  class CalculateAge
    def run(current_date, birth_date)
      month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
      current_ = current_date.split("/").map(&:to_i)
      day_, month_, year_ = current_

      birth_ = birth_date.split("/")
      birth_day, birth_month, birth_year = birth_.map(&:to_i)

      if birth_day >= day_
        month_ -= 1
        day_ += month_days[birth_month - 1]
      end

      if birth_month >= month_
        year_ -= 1
        month_ += 12
      end

      calculate_year = year_ - birth_year.to_i
      calculate_month = month_ - birth_month.to_i
      calculate_day = day_ - birth_day.to_i

      result = "Years: #{calculate_year}, Month: #{calculate_month}, Day: #{calculate_day}"
    end
  end
end
