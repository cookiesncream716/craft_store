# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category.create(category: 'Baby Blanket')
# Category.create(category: 'Crocheted Bags')
# Category.create(category: 'Crocheted Dishcloths')
# Category.create(category: 'Crocheted Scarves')
# Category.create(category: 'Zippered Pouches')

Item.create(name: 'Monster Baby Blanket', description: 'Washable baby blanket with monster themed fabric', price: '35.00', picture: 'monster_baby_blanket.jpg', category: Category.first)
Item.create(name: 'Multi-colored Bag', description: 'Variegated blue/green/white/purple cotton yarn crocheted bag. Small to medium size.', price: '15.00', picture: 'blue_multi_crochet_bag.jpg', category: Category.second)
Item.create(name: 'Bright Scrubby Dishcloth', description: 'Crocheted pink cotton dishcloth with bright scrubby yarn on one side. Measures about 6 inches square.', price: '5.00', picture: 'bright_scrubby_dishcloth.jpg', category: Category.third)
Item.create(name: 'Blue Infinity Scarf', description: 'Crocheted blue infinity scarf. Measures about 3 inches high.', price: '10.00', picture: 'blue_infinity_scarf.jpg', category: Category.fourth)
Item.create(name: 'Zippered Pouch', description: 'White zippered pouch with black/purple/pick geometric design. Measures 4 inches by 5 inches.', price: '5.00', picture: 'zip_pouch.jpg', category: Category.fifth)