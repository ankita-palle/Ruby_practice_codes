# Write a method that counts the occurrence of words in a string.

# Given this string
# "we solve ecommerce operations operations operations smart and and holistically"

# Expected outcome
# {we: 1, solve: 1, ecommerce: 1, operations: 3, smart: 1, and: 2, holistically: 1}

str = "we solve ecommerce operations operations operations smart and and holistically"

arr = str.split(' ')
hsh = {}

for i in 0..arr.length-1
  c = 1
  unless hsh.include? (arr[i])
    for j in i+1..arr.length-1
      if arr[i] == arr[j]
        c+=1
      end
    end
    hsh["#{arr[i]}"] = c
  end
end

print hsh