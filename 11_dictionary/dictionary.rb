class Dictionary

  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(val)
    val.is_a?(Hash) ? @entries.merge!(val) : @entries[val] = nil
  end

  def keywords
    @entries.keys.sort
  end

  def include?(val)
    @entries.key? val
  end

  def find(val)
    @entries.select { |e| e.include? val }
  end

  def printable
    result_string = ""
    keywords.each { |k| result_string += "[#{k}] \"#{@entries[k]}\"\n" }
    result_string.chomp
  end

end
