class AddContextArtistToSnapshot < ActiveRecord::Migration[7.0]
  def change
    add_column :snapshots, :track_artist, :string, array: true
    add_column :snapshots, :recently_played_artist, :string, array: true
  end
end
