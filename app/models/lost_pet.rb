class LostPet < ApplicationRecord
  belongs_to :breed
  belongs_to :species
  has_many :adoptions
end
