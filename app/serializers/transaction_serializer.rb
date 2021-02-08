class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :type, :category_id, :category
end
