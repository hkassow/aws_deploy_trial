class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.boolean :instock
      t.integer :quantity
      t.float :price
      t.timestamps
    end
  end
end
