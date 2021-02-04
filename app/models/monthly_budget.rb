class MonthlyBudget < ApplicationRecord
  belongs_to :user
  has_many :categories, dependent: :destroy
  has_many :transactions, through: :categories
end
