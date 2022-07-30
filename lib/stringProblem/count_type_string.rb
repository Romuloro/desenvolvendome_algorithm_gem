def count_type_string(string)
    upper, lower, number, special = 0, 0, 0, 0
    string.chars.map{ |char|
    if char.ord >= 65 and char.ord <= 90
        upper += 1
    elsif char.ord >= 97 and char.ord <= 122
        lower += 1
    elsif char.ord >= 48 and char.ord <= 57
        number += 1
    else
        special += 1
    end
    }

    p("Upper case letters: #{upper}")
    p("Lower case letters: #{lower}")
    p("Number: #{number}")
    p("Special characters: #{special}")
end

count_type_string("sajkhdaujriauj34878458439838!@432764798264723#$%!(*)#!*@#&AHSUUSIDIUYAIDAS")