class AddCreatedAtToGames < ActiveRecord::Migration
  def change
    add_column :games, :created_at, :datetime
  end
end
