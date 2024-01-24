class Mountain < ApplicationRecord
  validates :name, presence: true, length: { maximum: 36 }
  validates :longitude, presence: true, length: { maximum: 36 }
  validates :latitude, presence: true, length: { maximum: 36 }
  validates :elevation, presence: true, numericality: { only_float: true, greater_than: 0 }
end
