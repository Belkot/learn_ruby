def translate(str)
  # str.split.map do |e|
  #   if ( /ei|ie|ow|ou|ee|oy|ay|ea|oo|[aeiouy]/ =~ e ) == 0
  #     e << 'ay'
  #   else
  #     e.partition(/sch|thr|th|ch|.qu|qu|br|[^aeiouy]/).rotate(2).join << 'ay'
  #   end
  # end
  #   .join ' '
  str.split.map { |word| word = word.partition(/(?<!q)u|[aeioy]/).rotate.join + "ay" }.join(" ")
end