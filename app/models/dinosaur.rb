class Dinosaur < ApplicationRecord
  belongs_to :park
  has_many :shifts
  has_many :attractions, through: :shifts
  SPECIES = ['stegasaurus', 'tyrannosaurus', 'brachiosaurus', 'alex']
  validates :name, presence: true
  validates :image_url, presence: true
  validates :species, inclusion: { in: SPECIES }
end
