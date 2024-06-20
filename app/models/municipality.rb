class Municipality < ApplicationRecord
  broadcasts_refreshes

  # Associations
  belongs_to :account

  # Validations
  validates :name, presence: true, uniqueness: {scope: :account_id}
end
