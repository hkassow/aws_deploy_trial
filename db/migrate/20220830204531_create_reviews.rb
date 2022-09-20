class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :item_id
      t.string :description
      t.string :rating

      t.timestamps
    end
  end
end
