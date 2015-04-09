def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(nums)
  sum = 0
  nums.each { |e| sum += e }
  sum
end

def multiply(*nums)
  multiply = 1
  nums.each { |e| multiply *= e }
  multiply
end

def power(num, n)
  num**n
end

def factorial(num)
  if num > 1
    num * factorial(num - 1)
  elsif num == 0 || num == 1
    1
  else
    nil
  end
end
