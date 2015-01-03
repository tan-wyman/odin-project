def echo(string)
    return "#{string}"
end

def shout(string)
    return string.upcase
end

def repeat(string, times=2)
    string = (string + " ") * times
    return string.chop
end

def start_of_word(string, num=0)
        return string[0, num]
end

def first_word(string)
    return string.partition(" ").first
end

def titleize(string)
    lowercase_word = %w{a an the and or nor of over aboard about above across after against along amid among anti around as at before behind below beneath beside besides between beyond but by concerning considering despite down during except excepting excluding following for from in inside into like minus near of off on onto opposite outside over past per plus regarding round save since than through to toward towards under underneath unlike until up upon versus via with within without}
    title = string.split.map do |word|
        if lowercase_word.include?(word)
            word
        else
            word.capitalize
        end
    end
    title.first.capitalize!
    title.join(" ")
end
