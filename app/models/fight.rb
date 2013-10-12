class Fight < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :winner, :class_name => 'Fighter', :foreign_key => "winner_id"
  belongs_to :loser, :class_name => 'Fighter', :foreign_key => "loser_id"

  def set_results!
    self.winner_before_points = winner.points
    self.loser_before_points = loser.points

    self.winner_after_points = winner_before_points + (loser_before_points * tournament.points_percentage/100)
    self.loser_after_points = loser_before_points - (winner_before_points * tournament.points_percentage/100)

    winner.points = winner_after_points
    loser.points = loser_after_points

    winner.save!
    loser.save!
  end
end
