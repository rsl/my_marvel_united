class Box < ApplicationRecord
  has_many :heroes, -> { order(:name) }
  has_many :villains, -> { order(:name) }
  has_many :locations, -> { order(:name) }

  validates :name, presence: true
end
