def find_three(array)
    max_array = []
    3.times do
    max_value = array.max
    max_array << max_value
    array.delete(max_value)
    end
    p max_array
end

find_three([1, -5, 7, 9, -34, 7, 9])