def binarySearch (array, choice, low, high)
    if high >= low
        mid = (high + low) / 2
        if array[mid] == choice
            return mid
        elsif array[mid] < choice
            return binarySearch(array, choice, mid +1, high)
        else
            return binarySearch(array, choice, low, mid-1)
        end
    else
        return -1
    end
end

arr = [1, 11, 21, 31, 41, 51, 61, 71, 81, 91]
ch = 61
h = arr.length - 1
result = binarySearch(arr,ch, 0, h)
p result