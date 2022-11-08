class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.string :album_art
      t.integer :snapshot_id

      t.timestamps
    end
  end
end
