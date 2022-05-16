class Location < ApplicationRecord
  include Nameable
  include Orderable

  belongs_to :box
end
