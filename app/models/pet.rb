class Pet < ApplicationRecord
  SPECIES = %w(dog cat crocodile dinosaure elephant)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
