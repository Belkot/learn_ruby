class XmlDocument

  def initialize(indents=false)
    @indents_flag = indents
    @indents_count = 0
  end

  def method_missing(meth, args={}, &block)
    string_return = "<#{meth}"

    args.each{ |key, value| string_return += " #{key}='#{value}'" }

    if block_given?
      string_return += ">"

      if @indents_flag
        @indents_count += 1
        string_return += "\n" + "  " * @indents_count
      end

      string_return += yield

      if @indents_flag
        @indents_count -= 1
        string_return += "\n" + "  " * @indents_count
      end

      string_return += "</#{meth}>"
      string_return += "\n" if @indents_flag and @indents_count == 0
    else
      string_return += "/>"
    end

    string_return
  end

end
