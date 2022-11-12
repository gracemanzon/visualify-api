class AddArtistAlbumImageToSnapshot < ActiveRecord::Migration[7.0]
  def change
    add_column :snapshots, :artist_images, :string, array: true
    add_column :snapshots, :album_images, :string, array: true
    add_column :snapshots, :recently_played, :string, array: true
  end
end
