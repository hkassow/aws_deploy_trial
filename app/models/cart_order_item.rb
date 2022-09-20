class CartOrderItem < ApplicationRecord
    belongs_to :item
    belongs_to :imageable, polymorphic: true
    validates :imageable, presence: true
end
