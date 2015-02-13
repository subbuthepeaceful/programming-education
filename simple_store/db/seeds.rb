# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Catalog.delete_all
master_catalog = Catalog.first

Category.delete_all
winter_clothing_category = Category.create(name: "Winter Clothing",
                                           description: "Winterwear to keep warm!",
                                           catalog: master_catalog,
                                           parent: nil)

jackets = Category.create(name: "Jackets",
                          description: "Outerwear Jackets - really thick",
                          catalog: master_catalog,
                          parent: winter_clothing_category)

office_accessories = Category.create(name: "Office Accessories",
                                     description: "Everything you need to be at your professional best",
                                     catalog: master_catalog,
                                     parent: nil)


Product.delete_all
# Create a new Product of Type Apparel
fancy_down_jacket = Product.create(name: "Fancy Down Jacket",
                                   type: "Apparel",
                                   description: "This is the fanciest Down Jacket money can buy. Made from 100% Goose Down.",
                                   price: 69.99,
                                   gender: "Female",
                                   size: "M",
                                   color: "Black",
                                   fabric: "Wool/Down",
                                   catalog: master_catalog)

# Add the fancy down jacket to the jackets category
jackets.products << fancy_down_jacket

# Create a new Product of Type Luggage
elegant_briefcase = Product.create(name: "Elegant Briefcase",
                                   type: "Luggage",
                                   description: "This briefcase is meant for power brokers. Have briefcase, close deal.",
                                   price: 79.99,
                                   capacity: "10x12x2 inches",
                                   shell: "Hard synthetic",
                                   catalog: master_catalog)

# Add the fancy down jacket to the jackets category
office_accessories.products << elegant_briefcase

# Create a new Product of Type Cutlery
stainless_steel_forks = Product.create(name: "Stainless Steel Forks",
                                       type: "Cutlery",
                                       description: "A Dinner utensil fit for a Royal family",
                                       price: 29.99,
                                       finish: "Polished Steel",
                                       unit_quantity: 8,
                                       catalog: master_catalog)                       
