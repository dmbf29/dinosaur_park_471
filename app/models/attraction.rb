class Attraction < ApplicationRecord
  # attraction.
  has_many :shifts
  has_many :dinosaurs, through: :shifts
  validates :name, presence: true

  def to_label
    name.capitalize
  end
end
