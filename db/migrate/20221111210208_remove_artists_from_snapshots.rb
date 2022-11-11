class RemoveArtistsFromSnapshots < ActiveRecord::Migration[7.0]
  def change
    remove_column :snapshots, :artists, :string
  end
end
