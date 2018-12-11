require 'pry'

class PigLatinizer

  attr_reader :text

  def initialize
    @text = text
  end

  # def letter(place)
  #   self.split('')[place]
  # end

  # needs to be refactored, code smell is extra smelly
  def piglatinize(user_phrase)
    consonants = ['bBcCdDfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXyYzZ'].first.split('')
    vowels = ['aAeEiIoOuU'].first.split("")
    words = user_phrase.split(" ")
    pl_each_word = words.map do |word|
      if vowels.include?(word.split("").first)
        word = word.to_s + "way"
      elsif consonants.include?(word.split('').first) && consonants.include?(word.split('')[1]) && vowels.include?(word.split("")[2])
        word.split("")[2..-1].join("").to_s + word.split("")[0].to_s + word.split("")[1].to_s + "ay"
      elsif consonants.include?(word.split('').first) && consonants.include?(word.split('')[1]) && consonants.include?(word.split('')[2])
        word.split("")[3..-1].join("").to_s + word.split("")[0].to_s + word.split("")[1].to_s + word.split("")[2].to_s + "ay"
      else
        word.split("")[1..-1].join("").to_s + word.split("")[0].to_s + "ay"
      end
    end
    pl_each_word.join(" ")
  end


end
