class Place < ApplicationRecord
  has_many :visits

  validates :address, presence: true
end
