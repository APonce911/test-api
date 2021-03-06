class Product < ApplicationRecord
  belongs_to :user
  validates :description, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :quantity, presence: true, numericality: { only_integer: true }
end
