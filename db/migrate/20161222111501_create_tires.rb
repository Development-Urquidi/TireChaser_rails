class CreateTires < ActiveRecord::Migration[5.0]
  def change
    create_table :tires do |t|
      t.string :brand
      t.string :model
      t.integer :quantity
      t.decimal :price
      t.references :vendor, foreign_key: true

      t.timestamps
    end
  end
end
