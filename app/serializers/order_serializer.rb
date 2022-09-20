class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :active
  belongs_to :user
  has_many :cart_order_items
end
