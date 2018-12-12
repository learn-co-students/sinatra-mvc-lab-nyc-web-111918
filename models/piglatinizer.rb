class PigLatinizer

  def piglatinize(string)
    downAlpha = ('a'..'z').to_a
    upAlpha = ('A'..'Z').to_a
    vowels = %w[a e i o u A E I O U]
    entireAlpha = downAlpha + upAlpha
    consonants = entireAlpha - vowels
    arrayOfText = string.split
    pigLatinTranslator = arrayOfText.map do |word|
      if vowels.include?(word[0])
        word + 'way'
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        word[3..-1] + word[0..2] + 'ay'
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        word[2..-1] + word[0..1] + 'ay'
      elsif consonants.include?(word[0])
        word[1..-1] + word[0] + 'ay'
      else
        word
      end
    end
    pigLatinTranslator.join(" ")
  end

end
