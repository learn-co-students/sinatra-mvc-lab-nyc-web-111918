class PigLatinizer
  # attr_reader :words
  #
  # def initialize(words)
  #   @words = words
  # end
  #
  
  def piglatinize(string)
    alphabet_downcase = ('a'..'z').to_a
    alphabet_upcase = ('A'..'Z').to_a
    vowels = ['a', 'e', 'i', 'o', 'u','A', 'E', 'I', 'O', 'U']
    consonants = (alphabet_downcase - vowels) + (alphabet_upcase - vowels)
    array_of_strings = string.split(" ")
    pig_latin_sent = array_of_strings.map do |letter|
      #if the array of vowels is the first letter. ie. text position 0
    if vowels.include?(letter[0])
      #add way to the end of the word.
      letter + "way"
      #if the first letter of the word is a consonant
    elsif consonants.include?(letter[0]) && consonants.include?(letter[1]) && consonants.include?(letter[2])
      letter[3..-1] + letter[0..2] + "ay"
    elsif consonants.include?(letter[0]) && consonants.include?(letter[1])
      #if the first letter is a consonant
      #and the second letter is a consonant
      #take all the letters after that to the end of the word.
      #and add them to the end off the word
      #and then add 'ay'
      letter[2..-1] + letter[0..1] + "ay"
    elsif consonants.include?(letter[0])
      #take all letters after the second letter
      #add the first letter to the end
      #then add 'ay'
      letter[1..-1] + letter[0] + 'ay'
    else
      #if none of those are true return the all the letters.
      letter
    end
     # binding.pry
  end
  pig_latin_sent.join(" ")
  # binding.pry
end #end of piglatinize



end
