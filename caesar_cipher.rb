class CaesarCipher
  def caesar_cipher (str, shift)
      str_words = str.split
      new_str = []
      str_words.each do |word|
        new_word = ""
        word.each_char do |c|
          if ("a".."z").include?(c)
            new_c = ((c.ord - 97 + shift) % 26 + 97).chr
            new_word += new_c
          elsif ("A".."Z").include?(c)
            new_c =  ((c.ord - 65 + shift) % 26 + 65).chr
            new_word += new_c
          else
            new_word += c
          end
        end
        new_str.push(new_word)
      end
      new_str.join(" ")
  end
end
