require "pry"

class PigLatinizer
  attr_reader :text


  def piglatinize(text)
    vowels = "aAeEiIoOuU"
    text.split(" ").map do |w|
      if vowels.include?(w[0])
        w + "way"
      else
        first_vowel = w.chars.find_index { |char| vowels.include?(char)}.to_i
        w[first_vowel..-1] + w[0...first_vowel] + "ay"
      end
    end.join(" ")
  end

end
