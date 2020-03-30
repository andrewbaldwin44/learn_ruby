def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, number = 2)
  word + (" #{word}" * (number-1))
end

def start_of_word(word, number)
  word[0..number-1]
end

def first_word(word)
  word.split(" ")[0]
end

def titleize(word)
  conjunctions = %w[a an and in of the ]
  word.capitalize.split(" ").map{ |e|
      if conjunctions.include? e or e == "over"
        e
      else
        e.capitalize
      end
    }.join(" ")
end
