class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    has_many :cart_order_items, as: :imageable
    has_many :reviews, dependent: :destroy
    has_one :cart, dependent: :destroy
end
