class ChangeTournamentNameType < ActiveRecord::Migration
  def change
   change_column :tournaments, :name, :string
  end
end
