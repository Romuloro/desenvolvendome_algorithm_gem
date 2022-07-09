def maximizeArray(array, n)
    soma = 0
    i = 0
    array.sort!

    while (n > 0)
        if array[i] >= 0
            n = 0
        else
            array[i] = (-1) * array[i]
            n = n - 1            
        end
        i += 1
    end

    return soma = array.sum
end

arr = [-2, 0, 5, -1, 2]

p maximizeArray(arr, 4)
