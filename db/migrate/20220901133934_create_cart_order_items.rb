class CreateCartOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_order_items do |t|
      t.integer :item_id
      t.references :imageable, polymorphic: true
      t.timestamps
    end
  end
end
