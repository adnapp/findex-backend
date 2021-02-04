class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username
  has_many :MonthlyBudgets
  # has_many :categories, through: :MonthlyBudgets
end
