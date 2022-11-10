class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :snapshots
  has_many :artists
  has_many :songs
  has_many :genres
end
