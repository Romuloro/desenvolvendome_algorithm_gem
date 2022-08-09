# frozen_string_literal: true

module DateProblem
  class FindMinute
    def run(time, k)
      # minutes = ((time[0].ord - "0".ord) * 10 + (time[1].ord - "0".ord) * 60 + (time[3].ord - "0".ord) * 10 + (time[4].ord - "0".ord))

      minutes = (((time[0].ord - "0".ord) * 10 + time[1].ord - "0".ord) * 60 + ((time[3].ord - "0".ord) * 10 + time[4].ord - "0".ord))
      minutes += k
      hour = (minutes / 60).to_i % 24
      min_ = minutes % 60

      hour_r = if hour < 10
                 "0#{hour}:"
               else
                 "#{hour}:"
               end
      min_r = if min_ < 10
                "0#{min_}"
              else
                min_.to_s
              end
      "#{hour_r}#{min_r}"
    end
  end
end
