class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 36 }
  validates :role, presence: true, inclusion: { in: %w[user admin] }
end
