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
    lowercase_word = %w{a an the and but or for nor of over}
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
