class PigLatinizer

  def piglatinize(text)
    sent = text.split(" ")
    sent.collect{|word| pig_word(word)}.join(" ")
  end

  def pig_word(text)
    #binding.pry
    spl = text.split("")
    vowels = %w[a e i o u A E I O U]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z]
    if vowels.include?(spl[0])
      text + "way"
    elsif consonants.include?(spl[0]) && consonants.include?(spl[1]) && consonants.include?(spl[2])
      spl[3..-1].join.to_s + spl[0].to_s + spl[1].to_s + spl[2].to_s + 'ay'
    elsif consonants.include?(spl[0]) && consonants.include?(spl[1])
      spl[2..-1].join.to_s + spl[0].to_s + spl[1].to_s + 'ay'
    elsif consonants.include?(spl[0])
      spl[1..-1].join.to_s + spl[0].to_s + 'ay'
    end
  end
end