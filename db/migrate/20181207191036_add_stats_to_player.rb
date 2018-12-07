class AddStatsToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :health, :integer
  end
end
