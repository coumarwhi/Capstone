class AddDragonHealthToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :dragon_health, :integer
  end
end
