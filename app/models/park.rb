class Park < ApplicationRecord
  # associations
  has_many :dinosaurs # park.dinosaurs
  # validations
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
