class AddTracksToSnapshots < ActiveRecord::Migration[7.0]
  def change
    add_column :snapshots, :tracks, :string, array: true
  end
end
