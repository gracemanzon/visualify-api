class Genre < ApplicationRecord
  validates :title, presence: true
  validates :snapshot_id, presence: true

  belongs_to :snapshot
end
