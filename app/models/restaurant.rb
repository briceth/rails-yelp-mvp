class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :phone_number, :address, presence: true
  CATEGORIES = %w(chinese italian french vietnamese)
  validates :category, inclusion: { in: CATEGORIES }
end
