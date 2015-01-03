class Book
    attr_accessor   :title
    def initialize
        @title = title
    end
    def title=(newTitle)
    lowercaseWord = %w{a an the and or nor of over aboard about above across after against along amid among anti around as at before behind below beneath beside besides between beyond but by concerning considering despite down during except excepting excluding following for from in inside into like minus near of off on onto opposite outside over past per plus regarding round save since than through to toward towards under underneath unlike until up upon versus via with within without}
        title = newTitle.split.map do |word|
            lowercaseWord.include?(word) ? word : word.capitalize
        end
        title.first.capitalize!
        @title = title.join(" ")
    end
end








#def titleize(string)
#    lowercase_word = %w{a an the and or nor of over aboard about above across after against along amid among anti around as at before behind below beneath beside besides between beyond but by concerning considering despite down during except excepting excluding following for from in inside into like minus near of off on onto opposite outside over past per plus regarding round save since than through to toward towards under underneath unlike until up upon versus via with within without}
#    title = string.split.map do |word|
#        if lowercase_word.include?(word)
#            word
#        else
#            word.capitalize
#        end
#    end
#    title.first.capitalize!
#    title.join(" ")
#end
