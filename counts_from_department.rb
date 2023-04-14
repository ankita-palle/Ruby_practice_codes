def office_strength(department_count)
  sum = 0
  department_count.map{|hsh| sum += hsh["count"]}
  sum
end

department_count = [
  {
    "department"=> "Development",
    "count"=> 31
  },
  {
    "department"=> "QA",
    "count"=> 29
  },
  {
    "department"=> "Sales",
    "count"=> 10
  },
  {
    "department"=> "Design",
    "count"=> 4
  },
  {
    "department"=> "HR",
    "count"=> 3
  }
]

puts office_strength(department_count)