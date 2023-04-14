
def sum_of_odd_numbers(n)
  sum = 0
  for i in 1..n
    if i%2!=0
      sum+=i
    end
  end
  sum
end

n = 34
p sum_of_odd_numbers(n)