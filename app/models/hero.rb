class Hero < ApplicationRecord
  include Nameable

  belongs_to :box
  has_one_attached :card

  validates :name, presence: true, uniqueness: true

  scope :mutant, -> { where(mutant: true) }
  scope :non_mutant, -> { where(mutant: false) }
end
