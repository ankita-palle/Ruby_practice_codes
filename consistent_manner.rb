
names = []
names << " linh tran".strip
names << "carlos alberti ".strip
names << "lao xun".strip
names << " renu sen".strip


@result = ''
names.each_with_index do |ele, index|
  arr = ele.split(' ')
  a = arr.map{|ele| ele.capitalize}.join(' ')
  puts "#{index+1}. #{a}"
end