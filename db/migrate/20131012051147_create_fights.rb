class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.integer :winner_id
      t.integer :loser_id
      t.integer :winner_before_points
      t.integer :winner_after_points
      t.integer :loser_before_points
      t.integer :loser_after_points
      t.integer :tournament_id

      t.timestamps
    end
  end
end
