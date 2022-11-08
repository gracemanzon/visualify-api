class Snapshot < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :artists
  has_many :songs
end
