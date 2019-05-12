class AddTeamsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :team, :integer, index: true, foreign_key: true
  end
end
