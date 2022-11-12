class AddGenresToSnapshots < ActiveRecord::Migration[7.0]
  def change
    add_column :snapshots, :genres, :string, array: true
    add_column :snapshots, :albums, :string, array: true
    add_column :snapshots, :artist_followers, :integer, array: true
    add_column :snapshots, :artist_popularity, :integer, array: true
    add_column :snapshots, :track_popularity, :integer, array: true
  end
end
