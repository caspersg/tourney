class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.text :name
      t.date :date
      t.text :description
      t.decimal :points_percentage

      t.timestamps
    end
  end
end
