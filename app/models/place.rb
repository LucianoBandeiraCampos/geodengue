class Place < ApplicationRecord
  has_many :visits

  validates :address, presence: true
  validates :address, uniqueness: true
end
