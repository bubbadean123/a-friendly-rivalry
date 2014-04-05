class AddWinnerToGame < ActiveRecord::Migration
  def up
    add_column :games, :winner, :integer
  end

  def down
    remove_coumn :games, :winner
  end
end
