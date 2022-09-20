class Order < ApplicationRecord
    belongs_to :user
    has_many :cart_order_items, as: :imageable
    validates :user_id, presence: true
end
