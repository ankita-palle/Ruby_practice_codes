str = 'I am string'
arr, word = [], ''

str.chars.each do |w|
  word += w if str[w]!=' '
  if str[w] == ' '
    arr << word
    word = ''
  end
end

print arr
