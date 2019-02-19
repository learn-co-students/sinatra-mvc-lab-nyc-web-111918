class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    text = text.split
    consonant_count = /\A[bcdfghjklmnpqrstvwxyz]*/i
    text.map do |word|
        if word[consonant_count].length == 0
          word + "way"
        elsif word[consonant_count].length == 1
          first_char = word.slice!(0)
          piglatin = word + first_char + "ay"
          piglatin
        else
          num_consonants = word[consonant_count].length
          chars = word.slice!(0..num_consonants - 1)
          piglatin = word + chars + "ay"
          piglatin
        end
      end.join(" ")
    end
end
