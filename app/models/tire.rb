class Tire < ApplicationRecord
  belongs_to :vendor
  validates :brand, :model, presence: true
end
