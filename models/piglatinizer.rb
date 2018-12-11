class PigLatinizer
  def piglatinize(words)
    words.split.map {|word| piglatinize_all(word)}.join(" ")
  end

  def piglatinize_all(word)
    vowels = "aeiou".chars
    if vowels.include?(word[0].downcase)
      word + "way"
    else
      until vowels.include?(word[0].downcase)
        word = word.chars.rotate.join
      end
      word + "ay"
    end
  end

end
