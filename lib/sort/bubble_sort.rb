def bubbleSort(array)
    n = (array.length) -1
    for i in 0..n
        for j in 0..(n-i-1)
            if array[j] > array[j+1]
                array[j], array[j+1] = array[j+1], array[j]
            end
        end
    end
    return array
end

arr = [-5, 10, 2, -45, 30, 8]

result = bubbleSort(arr)
p result