def countSort(array)
    len = array.length-1
    max_element = array.max
    min_element = array.min
    range = max_element - min_element + 1

    cont_array = Array.new(range, 0)
    output_array = Array.new(len+1, 0)
    
    for i in 0..len
        cont_array[array[i] - min_element] += 1
    end

    len_cont = cont_array.length - 1

    for i in 1..len_cont
        cont_array[i] += cont_array[i-1]
    end

    for i in (len).downto(0)
        output_array[cont_array[array[i] - min_element] - 1] = array[i]
        cont_array[array[i] - min_element] -= 1
    end

    for i in 0..len
        array[i] = output_array[i]
    end

    return array
end

