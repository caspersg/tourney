class ChangeTournamentPercentageType < ActiveRecord::Migration
  def change
   change_column :tournaments, :points_percentage, :integer
  end
end
