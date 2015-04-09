class Array

  def sum
    result = 0
    each { |e| result += e }
    result
  end

  def square
    map { |e| e * e }
  end

  def square!
    map! { |e| e * e }
  end

end
