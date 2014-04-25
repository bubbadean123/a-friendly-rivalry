class RenameWinnerToWinnerId < ActiveRecord::Migration
  def up
    rename_column :games, :winner, :winner_id
  end

  def down
    rename_coumn :games, :winner_id, :winner
  end
end
