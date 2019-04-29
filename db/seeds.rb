# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shoe.create(product: 'Jordan 1 Bred', 
            price: 120.00, 
            release_date: DateTime.new(2019,4,29,8),
            style_code: 'AIRJD 082',
            color: 'RED / BLUE / WHITE',
            retailer: 'NIKE')

        
Shoe.create(product: 'Yeezy Zebra', 
            price: 200.99, 
            release_date: DateTime.new(2018,6,3,8),
            style_code: 'YZZ-ZBR',
            color: 'BLACK / WHITE',
            retailer: 'ADIDAS')

Shoe.create(product: 'Air Fear of God Raid', 
            price: 190.00, 
            release_date: DateTime.new(2019,4,27,12),
            style_code: 'AT8087-001',
            color: 'LIGHT BONE/ BLACK-WHITE',
            retailer: 'NIKE')

Shoe.create(product: 'REACT ELEMENT 87', 
            price: 160, 
            release_date: DateTime.new(2019,4,30,14),
            style_code: 'AQ1090-200',
            color: 'DUSTY PEACH/ ATMOSPHERE GREY-DEEP ROYAL BLUE- LUCID GREEN-AMARILLI-HYPER GRAPE',
            retailer: 'NIKE')

        