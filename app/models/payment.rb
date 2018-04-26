class Payment < ApplicationRecord
  belongs_to :expense, required: true

  validates :payday, :value, presence: true
end
