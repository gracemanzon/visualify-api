class Song < ApplicationRecord
  validates :title, presence: true
  validates :artist, presence: true
  validates :snapshot_id, presence: true

  belongs_to :snapshot
  belongs_to :user
end
