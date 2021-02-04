class User < ApplicationRecord
    has_many :MonthlyBudgets, dependent: :destroy
    has_many :categories, through: :MonthlyBudgets
end
