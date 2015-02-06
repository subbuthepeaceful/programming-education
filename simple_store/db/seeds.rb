# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Catalog.delete_all
master_catalog = Catalog.create(name: "Simple Store Master Catalog", active: true)

Category.delete_all
clothing_category = Category.create(name: "Winter Clothing",
                                    description: "Winterwear to keep warm!",
                                    catalog: master_catalog,
                                    parent: nil)

jackets = Category.create(name: "Jackets",
                          description: "Outerwear Jackets - really thick",
                          catalog: master_catalog,
                          parent: clothing_category)

Product.delete_all
fancy_down_jacket = Product.create(name: "Fancy Down Jacket",
                                   description: "This is the fanciest Down Jacket money can buy. Made from 100% Goose Down.",
                                   price: 69.99,
                                   catalog: master_catalog)

# Add the fancy down jacket to the jackets category
jackets.products << fancy_down_jacket
