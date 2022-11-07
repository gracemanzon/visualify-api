class CreateSnapshots < ActiveRecord::Migration[7.0]
  def change
    create_table :snapshots do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
