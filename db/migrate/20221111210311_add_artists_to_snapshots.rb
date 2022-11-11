class AddArtistsToSnapshots < ActiveRecord::Migration[7.0]
  def change
    add_column :snapshots, :artists, :string, array: true
  end
end
