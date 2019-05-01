class Shoe < ApplicationRecord
    before_save :default_values
    validates :product, :retailer, presence: true

    def default_values
        self.price ||= 'Will Update'
        self.release_date ||= 'Will Update'
        self.style_code ||= 'Not specified yet'
        self.color ||= 'Will Update soon'
    end
end


    # t.string "product"
    # t.decimal "price", precision: 8, scale: 2
    # t.datetime "release_date"
    # t.string "style_code"
    # t.string "color"
    # t.string "retailer"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false