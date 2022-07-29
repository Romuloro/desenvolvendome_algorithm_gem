input_array = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]


def search_by_value (array, choice)
    array.each do |value|
        if value == choice
            return array.index(value)
        end
    end   
    return -1
end

result = search_by_value(input_array, 0)

if result == -1
    puts "Element is not present in array"
else
    puts "Element is present at index #{result}"
end
