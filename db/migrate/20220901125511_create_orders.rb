class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.boolean :active
      t.timestamps
    end
  end
end
