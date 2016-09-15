module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end
  def word_count
    matches = @phrase.downcase.scan(/[a-zA-Z0-9\']+/)
    frequencies = Hash.new(0)
    matches.each do |match|
      m = match.gsub(/^(\'|\")|(\'|\")$/, '') # Remove 'quotes'
      frequencies[m] += 1
    end
    frequencies
  end
end
