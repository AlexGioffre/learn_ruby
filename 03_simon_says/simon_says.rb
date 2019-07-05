def echo(str)
    str
end


def shout(str)
    str.upcase
end

def repeat(str, tnum=2)
    nstr = ''
    tnum.times { nstr = nstr+' ' +str}
    nstr.strip
end


def start_of_word(str, num_word)
    nstr = ''
    i = 0
    while(i < num_word)
        nstr = nstr + str[i]
        i = i +1
    end
    nstr
end

def first_word(str)
    nstr = str.split(' ')
    nstr[0]
end

def titleize(str)
    not_capt = ['a', 'an', 'and', 'the', 'over']
    nstr = str.split(' ')
    cap_str = nstr.each.with_index.map {|word, i| 
        if(i == 0)
            word.capitalize
        elsif not_capt.include? word
            word
        else 
            word.capitalize
        end
    }
    title = cap_str.join(" ")
    title
end