def add(x, y)
    x + y
end

def subtract(x, y)
    x - y
end

def sum(arrNum)
    sum = 0
    arrNum.each { |x| sum = sum + x}
    sum
end

def multiply(numbers)
    product = 1
    for i in numbers do
        product *= i
    end
    product
end

def power(x, y)
    x ** y
end

def factorial(num)
    if (num == 0 || num == 1)
      return 1
    end
    num * factorial(num - 1)
end
  
