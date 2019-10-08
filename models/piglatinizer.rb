class PigLatinizer
  attr_reader :text

  def initialize
  
  end

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