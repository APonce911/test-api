class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :description
      t.integer :price
      t.integer :quantity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
