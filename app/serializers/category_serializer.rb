class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :budget, :monthly_budget_id
  has_many :transactions
end
