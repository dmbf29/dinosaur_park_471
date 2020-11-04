class Dinosaur < ApplicationRecord
  belongs_to :park
  SPECIES = ['stegasaurus', 'tyrannosaurus', 'brachiosaurus', 'alex']
  validates :name, presence: true
  validates :image_url, presence: true
  validates :species, inclusion: { in: SPECIES }
end
