json.array!(@fighters) do |fighter|
  json.extract! fighter, :name, :points
  json.url fighter_url(fighter, format: :json)
end
