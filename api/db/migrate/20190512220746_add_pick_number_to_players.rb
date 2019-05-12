class AddPickNumberToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :pick_number, :integer
  end
end
