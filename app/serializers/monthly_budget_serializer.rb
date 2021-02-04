class MonthlyBudgetSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :month, :budget
  has_many :categories
  has_many :transactions, through: :categories
end
