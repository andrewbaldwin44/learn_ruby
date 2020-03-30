def translate(sentence)
  vowels = %w[a e i o u]
  punctuation = %w[. ! ?]

  sentence.split(" ").map { |word|
    letters = word.split("")
    first_vowel = vowels.map{ |letter| word.index(letter)}.compact.min

    if punctuation.include? word[-1]
      add_punctionation = word[-1]
      word = word[0..-2]
    end

    if first_vowel == 0
      translated = "#{word}ay"
    else
      #treat "qu" as consonant
      first_vowel += 1 if word[first_vowel] == "u" && word[first_vowel-1] == "q"
      translated = "#{letters[first_vowel..word.length-1].join}#{letters[0..first_vowel-1].join}ay"
    end

    #retain capitals
    if word[0] == word[0].upcase
      translated = translated.downcase.capitalize
    end
    #retain punctuation
    translated = translated + add_punctionation if add_punctionation

    word = translated
  }.join(" ")
end
