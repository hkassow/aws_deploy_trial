class Item < ApplicationRecord
    has_many :cart_order_items
    has_one_attached :picture
    validates :name, :price, :quantity, presence: true

    def picture_url
        Rails.application.routes.url_helpers.rails_blob_path(picture, only_path: true) if picture.attached?
    end
end
