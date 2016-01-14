class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :category
      t.integer :num_players
      t.integer :num_teams
      t.integer :game_duration
      t.string :equipment
      t.text :description
      t.string :image_url
    end
  end
end
