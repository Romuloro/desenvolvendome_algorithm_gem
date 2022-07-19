def minimumSumProductTwoArrays(arr1, arr2, k)
    n = arr1.length
    diff = 0
    res = 0
    for i in 0..n-1
        pro = arr1[i] * arr2[i]
        res = res + pro

        if pro < 0 and arr2[i] < 0
            temp = (arr1[i] + (2 * k)) * arr2[i]
        elsif pro < 0 and arr1[i] < 0
            temp = (arr1[i] - (2 * k)) * arr2[i]
        elsif pro > 0 and arr1[i] < 0
            temp = (arr1[i] + (2 * k)) * arr2[i]
        elsif pro > 0 and arr1[i] > 0
            temp = (arr1[i] - (2 * k)) * arr2[i]
        end

        d = (pro - temp).abs

        if d > diff
            diff = d
        end
    end
    return res - diff
end

a = [ 2, 3, 4, 5, 4 ]
b = [ 3, 4, 2, 3, 2 ]
k = 3
resp = minimumSumProductTwoArrays(a, b, k)
p resp