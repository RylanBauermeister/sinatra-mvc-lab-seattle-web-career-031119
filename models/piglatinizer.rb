class PigLatinizer

  def piglatinize(phrase)
    words = phrase.split(" ")
    words.map {|word|
      pig_word(word)
    }.join(" ")
  end

  def pig_word(word)
    consts = word[/^[^(aeiou)]+/i]
    if consts
      word[consts.length..-1]+consts+"ay"
    else
      word += "way"
    end
  end

end
