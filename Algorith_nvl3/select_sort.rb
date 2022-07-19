def select_sort (array)
    n = (array.length) -1
    for i in 0..n
        idx = i
        for j in i+1..n
            if array[idx] > array[j]
                idx = j
            end
        end
        array[i], array[idx] = array[idx], array[i]
    end
    return array
end