class Villain < ApplicationRecord
  include Nameable

  belongs_to :box
  has_one_attached :card

  validates :name, presence: true, uniqueness: true
end
