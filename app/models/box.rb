class Box < ApplicationRecord
  has_many :heroes
  has_many :villains

  validates :name, presence: true
end
