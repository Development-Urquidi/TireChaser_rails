class CreateTires < ActiveRecord::Migration[5.0]
  def change
    create_table :tires do |t|
      t.string :brand
      t.string :model
      t.integer :quantity
      t.decimal :price, :precision => 8, :scale => 2
      t.references :vendor, foreign_key: true

      t.timestamps
    end
  end
end
