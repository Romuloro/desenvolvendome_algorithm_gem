# frozen_string_literal: true

module DateProblem
  class FindFuture
    def comparation(array_date, query_date)
      array_ = array_date.split("/").map(&:to_i)
      query_ = query_date.split("/").map(&:to_i)

      if query_[2] != array_[2]
        return query_[2] - array_[2]
      elsif query_[1] != array_[1]
        return query_[1] - array_[1]
      elsif query_[0] != array_[0]
        return query_[0] - array_[0]
      end

      0
    end

    def nextClosestDate(array, q)
      array = array.sort do |a, b|
        a.split("/").map(&:to_i)[2] <=> b.split("/").map(&:to_i)[2]
      end

      l = 0
      r = array.length - 1
      ind = -1

      while l <= r
        m = (l + r) / 2
        c_ = comparation(array[m], q)

        if c_.zero?
          ind = m
          break
        elsif c_.negative?
          r = m - 1
          ind = m
        else
          l = m + 1
        end
      end

      if ind == -1
        return "-1"
      else
        return array[ind]
      end
    end

    def run(array, queries)
      n = queries.length
      result = []
      for i in 0..n-1
        rp = self.nextClosestDate(array, queries[i])
        result.append(rp)
      end
      return result
    end
  end
end
