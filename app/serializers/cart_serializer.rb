class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :cart_total
  belongs_to :user
  has_many :cart_order_items

  def cart_total
    total = 0
    object.cart_order_items.each { |x| total+= x.item.price }
    return total
  end
end
