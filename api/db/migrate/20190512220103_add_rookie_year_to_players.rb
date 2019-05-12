class AddRookieYearToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :rookie_year, :integer
  end
end
