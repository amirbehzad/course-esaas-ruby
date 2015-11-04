# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    arr.reduce(:+).to_i
end

def max_2_sum arr
  return 0 unless arr.length > 0
  return arr.first unless arr.length > 1
  arr.sort[-2..-1].inject(:+).to_i()
end

def sum_to_n? arr, n
  return false unless arr.length > 1
  arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  !!(s =~ /^[a-z]+.*/i) && !!(s =~ /^[^(a|e|i|o|u)]+/i)
end

def binary_multiple_of_4? s
  return false unless s =~ /^[0-1]+$/
  s.to_i(2) % 4 == 0 
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError unless isbn.length > 0
    raise ArgumentError unless price > 0
  end
  def price_as_string
    "$%.2f" % @price
  end
  def price=(price)
    raise ArgumentError unless price > 0
    @price = price
  end
  def price
    @price
  end
  def isbn
    @isbn
  end
  def isbn=(isbn)
    raise ArgumentError unless isbn.length > 0
    @isbn = isbn
  end
end


