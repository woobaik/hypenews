module ShoesHelper

    def shoe_images(shoe)
        if shoe.shoe_images.attached?
            image_tag(shoe.shoe_images).variant(resize_to_limit: [200,200])
        else
            image_tag('coming_soon.jpg')
        end
    end

end
