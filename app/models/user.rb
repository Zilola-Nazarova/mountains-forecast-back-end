class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 36 }
end
