class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :studio
      t.integer :media_type_id

      t.timestamps
    end
  end
end
