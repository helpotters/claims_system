class Claim < ApplicationRecord
  broadcasts_refreshes
  has_one_attached :signature
  # Associations
  belongs_to :municipality
  belongs_to :user

  # Validations
end
