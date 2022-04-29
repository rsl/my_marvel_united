class Villain < ApplicationRecord
  include FriendlyId

  belongs_to :box
  has_one_attached :card

  validates :name, presence: true, uniqueness: true

  friendly_id :name, use: :slugged
end
