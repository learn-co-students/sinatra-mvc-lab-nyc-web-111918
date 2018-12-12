
class PigLatinizer

attr_accessor :text
#if starts with vowel, add way to end
#if startswith consonant movie first to last and add ay
  def initialize(text)
    @text = text
  end

  def text_converter
    words = self.text.split(" ")
    # binding.pry
    #just checking if vowel or not, but should adda catch for some weird start other than vowel or consonant
    words.map! do |word|
      if word[0].scan(/[aeiou]/).length == 0
        # binding.pry
        word = word.split("")
        word = word.push(word[0])
        word.shift
        word = word.join()
        word = word + "ay"
      else
        word  + "way"
      end
    end
    # binding.pry
    words.join(" ")
  end

  # def word_latinizer(word)




end #end of class
