class AddGameToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :game_id, :integer
    add_foreign_key :players, :games
  end
end
