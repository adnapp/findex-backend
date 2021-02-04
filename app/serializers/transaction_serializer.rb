class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :type
end
