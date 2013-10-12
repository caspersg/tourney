json.array!(@tournaments) do |tournament|
  json.extract! tournament, :name, :date, :description, :points_percentage
  json.url tournament_url(tournament, format: :json)
end
