class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    @vowels=['a','e','i','o','u']
    @specialcases=['pl', 'th', 'pr', 'sk', 'st']
    @specialcases2=['spr', 'how', 'str']
    words=text.split(" ")
    output=words.map do |word|
      wordoutput=""
      first_letter=word[0]
      if word.downcase=="who"
        wordoutput="owhay"
      elsif @specialcases2.include?(word.downcase[0..2])
        wordoutput=word[3...word.length]+word[0..2]+"ay"
      elsif @specialcases.include?(word.downcase[0..1])
        wordoutput=word[2...word.length]+word[0..1]+"ay"
      elsif !@vowels.include?(first_letter.downcase)
        wordoutput=word[1...word.length]+first_letter+"ay"
      else
        wordoutput=word+"way"
      end
      wordoutput
    end.join(" ")
    output
  end
end


#Test = Esttay
