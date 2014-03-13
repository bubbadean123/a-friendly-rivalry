class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :combatant_name
      t.text :combatant_description

      t.timestamps
    end
  end
end
