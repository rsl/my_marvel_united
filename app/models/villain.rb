class Villain < ApplicationRecord
  include Nameable
  include Orderable

  belongs_to :box
  has_one_attached :card

  scope :mutant, -> { where(mutant: true) }
end
