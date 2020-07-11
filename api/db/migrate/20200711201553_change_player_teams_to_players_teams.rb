class ChangePlayerTeamsToPlayersTeams < ActiveRecord::Migration[5.2]
  def change
    rename_table :player_teams, :players_teams
  end
end
