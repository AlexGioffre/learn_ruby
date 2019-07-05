def translate(str)
    vow = ['a', 'e', 'i', 'o', 'u']
    word = str.split(' ')

    each_word = word.map {|char| 
        text = ''
        char.split("").each_with_index {|let, i|
            if vow.include? let
                if i == 0
                    text = char +"ay"
                elsif let == 'u' && char[i-1] == 'q'
                    text = char[i +1..char.length] + char[0..i] + "ay"
                else 
                    text = char[i..char.length] + char[0..i-1] + "ay"
                end
                break
            end
        }
    text
    }

    new_str = each_word.join(" ")
    new_str

end