class RemoveStartEndDateFromSnapshot < ActiveRecord::Migration[7.0]
  def change
    remove_column :snapshots, :start_date, :datetime
    remove_column :snapshots, :end_date, :datetime
  end
end
