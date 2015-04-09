def reverser
  yield.split.map { |e| e.reverse }.join ' '
end

def adder(num=1)
  yield + num
end

def repeater(count=1)
  count.times { yield }
end
