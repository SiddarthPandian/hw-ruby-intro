# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  else
    sum = 0
    for el in arr
      sum += el
    end
    return sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elseif arr.length == 1
    return arr[0]
  else
    maxArr = arr.max(2) {|a,b| a <=> b}
    return maxArr.sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 || arr.length == 1
    return false
  end
  for i in 0..arr.length
    for j in i+1..arr.length
      if arr[i].to_i + arr[j].to_i == n
        return true
      end
    end
  end
  return false
end
# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  
  if /\A(?=[^aeiou])(?=[a-z])/i.match(s)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if !(/\A[10]*\z/.match(s)) || s.length == 0
    return false
  end
  
  if s.to_i % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if price <= 0
      raise ArgumentError.new("The price is less than 0")
    end
    if isbn.length == 0
      raise ArgumentError.new("isbn cannot be empty string")
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    if isbn.length == 0
      raise ArgumentError.new("isbn cannot be empty string")
    end
    @isbn = isbn
  end
  
  def price=(price)
    if price <= 0
      raise ArgumentError.new("The price is less than 0")
    end
    @price = price
  end
  
  def price_as_string
    return "$%0.2f" % [@price]
  end
end
