class CreatePlayerTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :player_teams, id: false do |t|
      t.references :player, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
    end
  end
end
