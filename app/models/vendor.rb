class Vendor < ApplicationRecord
  has_many :tires

  validates :address, :name, presence: true
end

