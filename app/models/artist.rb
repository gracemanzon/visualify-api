class Artist < ApplicationRecord
  validates :name, presence: true
  validates :snapshot_id, presence: true

  belongs_to :snapshot
end
