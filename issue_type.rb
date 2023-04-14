def issue_type(title)
  word = ''
  title.chars.each do |c|
    word += c if c!=':'
    if c == ':'
      return word
    end
  end
end

title = "bug:infinite-spinner-in-home-page"

p issue_type(title)