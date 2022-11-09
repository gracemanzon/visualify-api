class AddStartEndDateToSnapshot < ActiveRecord::Migration[7.0]
  def change
    add_column :snapshots, :start_date, :date
    add_column :snapshots, :end_date, :date
  end
end
