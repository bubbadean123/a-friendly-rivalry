class CreateGamesPeople < ActiveRecord::Migration
  def change
    create_table :games_people do |t|
      t.integer :person_id
      t.integer :game_id
      t.timestamps
    end
  end
end
