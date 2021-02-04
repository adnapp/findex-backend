class Transaction < ApplicationRecord
  belongs_to :category
  delegate :monthly_budget, to: :category
end
