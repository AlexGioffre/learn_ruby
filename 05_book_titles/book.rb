class Book
    attr_writer :title

    def title
        not_capt = ['a', 'an', 'and', 'the', 'over', 'in', 'of']
        nstr = @title.split(' ')
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
end
