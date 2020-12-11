class Place < ApplicationRecord
  has_many :visits

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :address, presence: true
  validates :address, uniqueness: true
end
