class Expense < ApplicationRecord
  validates :name, presence: true
end
