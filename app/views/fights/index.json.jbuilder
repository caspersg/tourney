json.array!(@fights) do |fight|
  json.extract! fight, :winner_id, :loser_id, :winner_before_points, :winner_after_points, :loser_before_points, :loser_after_points, :tournament_id
  json.url fight_url(fight, format: :json)
end
