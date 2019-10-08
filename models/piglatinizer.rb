class PigLatinizer
attr_accessor :text

      def initialize(text = nil)
      @text = text
      end

      def piglatinize(word)
        splited_word = word.split(' ')
        final_result = splited_word.map do |word|
          pig(word)
        end
        final_result.join(' ')
      end

      def pig(word)
        first_letter = word[0].downcase
              if ["a", "e", "i", "o", "u"].include?(first_letter)
                "#{word}way"
              else
                consonant_of_word = word.downcase.gsub(/[aeiou]/, ' ') .split(" ")
                removed_consonant_legth = consonant_of_word.shift.length
                splited_word = word.split('')
                removed_word = splited_word.shift(removed_consonant_legth)
                splited_word.join('') + removed_word.join('') + "ay"
              end
      end
end
