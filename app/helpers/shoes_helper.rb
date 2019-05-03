module ShoesHelper

    def active_class(link_path)
        current_page?(link_path) ? 'is-active' : ''
    end

    def shoe_images_helper(shoe)
        if shoe.shoe_images.attached?
            image_tag(shoe.shoe_images)
        else
            image_tag('coming_soon.jpg')
        end
    end

    def shoe_release_date_helper(shoe)
        if shoe.release_date
            shoe.release_date.localtime.strftime('Release on %m/%d/%y')
        end
    end

    def shoe_release_time_helper(shoe)
        if shoe.release_date
            shoe.release_date.localtime.strftime('At %I:%M%p')
        end
    end

    def shoe_price_helper(shoe)
        if shoe.price  == 0.0
            'PRICE Will Update Soon'
        else
            number_to_currency(shoe.price)
        end
    end

    
end
