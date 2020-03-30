def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  return 0 if numbers == []
  numbers.inject(:+)
end

def multiply(numbers)
  return 0 if numbers == []
  numbers.inject(:*)
end

def power(a, b)
  a**b
end

def factorial(number)
  previous = 1
  for i in 1..number
    previous = previous * i
  end
  previous
end
