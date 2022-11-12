class AddRecentlyPlayedPopularityToSnapshot < ActiveRecord::Migration[7.0]
  def change
    add_column :snapshots, :recently_played_popularity, :integer, array: true
  end
end
