def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n=2)
  ("#{str} " * n).chop
end

def start_of_word(str, n)
  str[0...n]
end

def first_word(str)
  str.split.first
end

NO_CAPITALIZE_WORDS = %w( over )

def titleize(str)
  str[0] = str[0].upcase
  str.split
    .map { |e| e.length < 4 || NO_CAPITALIZE_WORDS.include?(e) ? e : e.capitalize }
      .join ' '
end
