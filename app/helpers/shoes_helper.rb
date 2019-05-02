module ShoesHelper

    def shoe_images(shoe)
        if shoe.shoe_images.attached?
            image_tag(shoe.shoe_images)
        else
            image_tag('coming_soon.jpg')
        end
    end

end
