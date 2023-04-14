def add(a, b)
  c = a.to_f + b.to_f
  c.round(2)
end

a = 0.205
b = 0.312

puts add(a, b)
