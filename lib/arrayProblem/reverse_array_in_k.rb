def reverse_in_k(array, k)
    if array.length > k
        key_pick = 0
        key_right = (array.length) -1
        k.times do
            array[key_pick], array[key_right]  = array[key_right], array[key_pick]
            key_pick += 1
            key_right -= 1
        end
        p array
   else
    p"tamanho da arrray é menor que o numero de vezes por favor escolha outra arrayProblem ou esolhar um numero de vezes menor"
   end
end

reverse_in_k([1, 2, 3], 3)