def sum(number)
  numbers.inject{|sum, ele| sum+=ele}
end

numbers = [3, 4, 5, 10, 8, 12, 23]

print sum(numbers)
