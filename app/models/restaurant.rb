class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true

  category = %w(chinese italian japanese french belgian)
  validates :category, inclusion: { in: category }
end
