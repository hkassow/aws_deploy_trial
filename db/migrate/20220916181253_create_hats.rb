class CreateHats < ActiveRecord::Migration[7.0]
  def change
    create_table :hats do |t|
      t.string :description

      t.timestamps
    end
  end
end
