def mask_credit_card_number(card_number)
  c = card_number.delete(' ').reverse
  card_no = ''
  for i in 0..c.length
    card_no += c[i] if i<4
    card_no += '*' if i>4
  end
  card_no.reverse
end

card_number = '5555 5555 5555 4444'

puts mask_credit_card_number(card_number)