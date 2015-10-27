# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each { |e| s += e }
  return s
end

def max_2_sum arr
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    sorted_array = arr.sort
    return sorted_array[sorted_array.size - 1] + sorted_array[sorted_array.size - 2]
  end
  
end

def sum_to_n? arr, n
  return false if arr.size < 2
  
  arr.length.times do |i|
      arr.length.times do |j|
          if i != j && arr[i] + arr[j] == n
              return true
          end
      end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if !(s =~ /^[^AEIOU\W]/i)
    return false
  end
  return true
end

def binary_multiple_of_4? s
  #!!(s =~ /(^0$|^(0|1)+0{2}$)/)
  !!((s =~ /^0+$|^[01]*0{2}$/))
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise(ArgumentError)
    end
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return '$%.2f' % @price
  end
end
