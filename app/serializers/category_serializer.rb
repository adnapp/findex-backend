class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :budget
  has_many :transactions
end
