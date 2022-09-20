class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :password_digest
      t.string :email
      t.integer :clearance_level, default: 1

      t.timestamps
    end
  end
end
