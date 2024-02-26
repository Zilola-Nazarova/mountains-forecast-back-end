class Mountain < ApplicationRecord
  validates :name, presence: true, length: { maximum: 36 }
  validates :longitude, presence: true, numericality: { only_float: true }
  validates :latitude, presence: true, numericality: { only_float: true }
  validates :elevation, presence: true, numericality: { only_float: true, greater_than: 0 }
end
