class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instock, :quantity, :price, :picture_url
end
