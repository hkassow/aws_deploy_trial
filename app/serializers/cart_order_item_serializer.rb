class CartOrderItemSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :item
end
