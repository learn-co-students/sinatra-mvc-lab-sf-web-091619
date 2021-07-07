class PigLatinizer
    # attr_accessor :word
    # @@words = []

    def initialize
        
        # @@words << self
    end

    # def self.all
    #     @@words
    # end

    def piglatinize(word)
        split_words = word.split(' ')
        split_words.map do |word|
            if word =~ /^[aeiou]/i
                word + 'way'
            else
                consonants = word =~ /[aeiou]/i
                letters = word.slice(0...consonants)
                ending = letters + 'ay'
                new_word = word.slice(consonants..-1) + ending
            end
       end.join(' ')
    end
end