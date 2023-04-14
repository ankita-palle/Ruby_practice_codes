def update_campaign_details(campaign_details, completed_locations_id, new_locations)
  arr = campaign_details.concat(new_locations)
  arr.each do |hsh|
    v = hsh["id"]
    if completed_locations_id.include?(v)
      hsh["completed"] = true
    end
  end
end

completed_locations_id = [1, 3]
campaign_details = [
  {
    "name"=> "Aizawl",
    "state"=> "Mizoram",
    "id"=> 1,
    "completed"=> false
  },
  {
    "name"=> "Kochi",
    "state"=> "Kerala",
    "id"=> 2,
    "completed"=> false
  },
  {
    "name"=> "Nagercoil",
    "state"=> "Tamil Nadu",
    "id"=> 3,
    "completed"=> false
  },
]
new_locations = [
  {
    "name"=> "Kurnool",
    "state"=> "Andhra Pradesh",
    "id"=> 4,
    "completed"=> false
  },
  {
    "name"=> "Warangal",
    "state"=> "Telangana",
    "id"=> 5,
    "completed"=> false
  }
]

puts update_campaign_details(campaign_details, completed_locations_id, new_locations)