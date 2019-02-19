class PigLatinizer


  VOWELS = %(a e i o u A E I O U)
  def piglatinize(string)
    string.split(" ") == 1 ? piglatinize_word(string) : piglatinize_sentence(string)
  end

  def piglatinize_word(word)
    new_string = ""
      if !VOWELS.include?(word[0]) && !VOWELS.include?(word[1]) && !VOWELS.include?(word[2])
        new_string << word[3..-1] + word[0..2] + "ay"
      elsif  !VOWELS.include?(word[0]) && !VOWELS.include?(word[1])
        new_string << word[2..-1] + word[0..1] + "ay"
      elsif !VOWELS.include?(word[0])
        new_string << word[1..-1] + word[0] + "ay"
      elsif VOWELS.include?(word[0])
        new_string << word + "way"
      end
      new_string
    end

    def piglatinize_sentence(words)
      words.split(" ").map{|word| piglatinize_word(word)}.join(" ")
    end
end
