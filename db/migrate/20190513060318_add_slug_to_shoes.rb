class AddSlugToShoes < ActiveRecord::Migration[5.2]
  def change
    add_column :shoes, :slug, :string
    add_index :shoes, :slug, unique: true
  end
end
