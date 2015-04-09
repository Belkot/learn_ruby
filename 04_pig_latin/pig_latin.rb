def translate(str)
  str.split.map { |word| word = word.partition(/(?<!q)u|[aeioy]/).rotate.join + "ay" }.join ' '
end
