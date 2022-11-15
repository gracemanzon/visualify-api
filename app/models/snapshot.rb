class Snapshot < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  # accepts_nested_parameters_for :artists
  # has_many :artists
  # has_many :songs
  # has_many :genres

end
