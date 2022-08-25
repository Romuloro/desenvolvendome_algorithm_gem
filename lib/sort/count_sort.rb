# frozen_string_literal: true

module Sort
  class CountSort
    def run(array)
      len = array.length - 1
      max_element = array.max
      min_element = array.min
      range = max_element - min_element + 1

      cont_array = Array.new(range, 0)
      output_array = Array.new(len + 1, 0)

      (0..len).each do |i|
        cont_array[array[i] - min_element] += 1
      end

      len_cont = cont_array.length - 1

      (1..len_cont).each do |i|
        cont_array[i] += cont_array[i - 1]
      end

      len.downto(0).each do |i|
        output_array[cont_array[array[i] - min_element] - 1] = array[i]
        cont_array[array[i] - min_element] -= 1
      end

      (0..len).each do |i|
        array[i] = output_array[i]
      end

      array
    end
  end
end
