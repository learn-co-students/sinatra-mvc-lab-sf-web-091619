class PigLatinizer
    attr_reader :text

  

    def initialize
       
    end

    # def piglatinize
    #     vowels = ["a", "e", "i", "o", "u"]
    #     new_word = ""
    #     word_arr = @words.downcase.split
    #     word_arr.each do |word|
    #         cars = word.chars
    #         if vowels.include?(cars[0]) 
    #             new_word += cars.join("") + "way"
    #         else    
                

                    
    # end

    def piglatinize(text)
        words = text.split
    
        words.map do |word|
          if word =~ /^[aeiou]/i 
           "#{word}way"
          else
            next_vow = word =~ /[aeiou]/i 
            consonants = word.slice(0...next_vow)
            rest = word.slice(next_vow..-1)
            "#{rest}#{consonants}ay"
          end
        end.join(' ')
      end

end