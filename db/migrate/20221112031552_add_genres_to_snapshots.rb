class AddGenresToSnapshots < ActiveRecord::Migration[7.0]
  def change
    add_column :snapshots, :genres, :string, array: true
    add_column :snapshots, :albums, :string, array: true
    add_column :snapshots, :artist_followers, :string, array: true
    add_column :snapshots, :artist_popularity, :string, array: true
  end
end
