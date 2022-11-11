class AddArraysToSnapshot < ActiveRecord::Migration[7.0]
  def change
    add_column :snapshots, :artists, :string, array: true, default: []
  end
end
