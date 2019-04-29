class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.string :product
      t.decimal :price, precision:8, scale:2
      t.datetime :release_date
      t.string :style_code
      t.string :color
      t.string :retailer

      t.timestamps
    end
  end
end
