def other_diseases(locations)
  arr = []
  locations.map do |hsh|
    if hsh["diseases"].include?('COVID-19')
      hsh["diseases"].map{|d| arr << d if d!= 'COVID-19'}
    end
  end
  arr.uniq
end

locations = [
  {
    "id"=> 1,
    "name"=> "Gotham",
    "diseases"=> ['COVID-19', 'Disease-A', 'Disease-B']
  },
  {
    "id"=> 2,
    "name"=> "NeverLand",
    "diseases"=> ['Disease-R', 'Disease-H', 'Disease-G']
  },
  {
    "id"=> '3',
    "name"=> "Asgard",
    "diseases"=> ['Disease-L', 'COVID-19', 'Disease-B']
  }
]

puts other_diseases(locations)