# frozen_string_literal: true

module Sort
  class MergeSort
    def run(array)
      n = array.length - 1

      if n > 0
        mid = n / 2
        mid.floor
        l = array[0..mid]
        r = array[mid + 1..n]

        l = run(l)
        r = run(r)

        i = j = k = 0

        while (i < l.length) && (j < r.length)
          if l[i] < r[j]
            array[k] = l[i]
            i += 1
          else
            array[k] = r[j]
            j += 1
          end
          k += 1
        end

        while i < l.length
          array[k] = l[i]
          i += 1
          k += 1
        end

        while j < r.length
          array[k] = r[j]
          j += 1
          k += 1
        end
      end
      array
    end
  end
end
