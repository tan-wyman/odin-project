def translate(s)
    phrase = s.split(" ").map do |word| 
        word = split(/([^aeiouq]*(qu)?).*/)
        word[1] + word[0] + "ay"
    end
    phrase.join(" ")
end
