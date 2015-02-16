#Implement caesar cipher that takes in a string and shift factor and then
#outputs the modified string


def caesar_cipher(word, shift)
  letters = ('a'..'z').to_a.concat(('A'..'Z').to_a)
  cipher = ""

  #only shift alpha characters
  word.each_char do |c|
    cipher += letters.include?(c) ? letters[(letters.index(c) + shift) % 52] : c
  end

  cipher
end

puts caesar_cipher("What a string!", 5)
#puts caesar_cipher("Test Five 432 One!", 5)
