class User < ApplicationRecord
  # Paired down for the moment
  devise :database_authenticatable, :rememberable, :validatable
end
