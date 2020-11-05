class Shift < ApplicationRecord
  belongs_to :dinosaur
  belongs_to :attraction
  validates_uniqueness_of :dinosaur, scope: :attraction
end
