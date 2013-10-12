class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.text :name
      t.integer :points

      t.timestamps
    end
  end
end
