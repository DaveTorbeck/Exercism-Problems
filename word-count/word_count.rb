class Phrase
  def initialize(phrase)
    @words = phrase.split(/[\s,]+/)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) do |word, counts|
      sanitized_word = strip_characters(word)
      counts[sanitized_word] += 1 unless sanitized_word.empty?
    end 
  end

  def strip_characters(word)
    word.downcase.gsub(/[^0-9a-z' ]/i, '')
  end

end
