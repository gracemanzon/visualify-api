class AddRecentlyPlayedAlbumArtToSnapshot < ActiveRecord::Migration[7.0]
  def change
    add_column :snapshots, :recently_played_album_art, :string, array: true
  end
end
