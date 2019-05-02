class Shoe < ApplicationRecord
    before_save :default_values
    validates :product, :retailer, presence: true
    has_one_attached :shoe_images

    def default_values
        self.price ||= 'Price Will Update'
        self.release_date ||= 'Release Date Will Update'
        self.style_code ||= 'Code Is Not Specified Yet'
        self.color ||= 'Colorway Will Update soon'
    end

    def self.upcoming
        current_time = Time.now
        where("release_date >= ?", current_time)
    end

    def self.past_release
        current_time = Time.now
        where('release_date < ?', current_time) 
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