class RPNCalculator

  def initialize
    @stack = []
  end

  def push(num)
    @stack << num
  end

  def value
    @stack.last
  end

  def plus
    check_stack
    last = @stack.pop
    @stack << @stack.pop + last
  end

  def minus
    check_stack
    last = @stack.pop
    @stack << @stack.pop - last
  end

  def divide
    check_stack
    last = @stack.pop
    @stack << @stack.pop / last.to_f
  end

  def times
    check_stack
    last = @stack.pop
    @stack << @stack.pop * last
  end

  def tokens(str)
    str.split.map { |e| e =~ /[\*\/\+\-]/ ? e.to_sym : e.to_i }
  end

  def evaluate(str)
    tokens(str).map do |e|
      case e
      when :*
        times
      when :+
        plus
      when :/
        divide
      when :-
        minus
      else
        push e
      end
    end

    value
  end

  private

    def check_stack
      fail "calculator is empty" if @stack.size < 2
    end

end
