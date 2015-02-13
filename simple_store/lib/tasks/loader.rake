require 'csv'
desc 'This is a simple store catalog loader from CSV'

namespace :simple_store do
  namespace :catalog do 
    task :csv_loader => :environment do
      # This task is responsible for loading a catalog from a CSV File

      master_catalog = Catalog.first

      csv_catalog_file = "#{Rails.root}/db/data/simple_store_catalog.csv"
      csv_catalog = CSV.read(csv_catalog_file)

      # Remember that Line 1 is the Header
      product_header = csv_catalog[0] # 0 because array indexes always start at 0

      total_number_of_elements = csv_catalog.size - 1 # taking out the header line

      csv_catalog[1..total_number_of_elements].each do |csv_catalog_line|

        product = Product.create(type: csv_catalog_line[0],
                                name: csv_catalog_line[1],
                                description: csv_catalog_line[2],
                                gender: csv_catalog_line[3],
                                size: csv_catalog_line[4],
                                color: csv_catalog_line[5],
                                fabric: csv_catalog_line[6],
                                capacity: csv_catalog_line[7],
                                shell: csv_catalog_line[8],
                                finish: csv_catalog_line[9],
                                unit_quantity: csv_catalog_line[10],
                                catalog: master_catalog,
                                price: rand(100))

        product_categories = csv_catalog_line[11]
        product_categories.split(",").each do |category_in_csv|
          begin 
            puts "Looking for Category #{category_in_csv}"
            category = Category.find_by_name!(category_in_csv)
          rescue ActiveRecord::RecordNotFound
            # This category doesn't exist
            puts "Did not find Category #{category_in_csv} ... creating it"
            category = Category.create(name: category_in_csv,
                                       catalog: master_catalog,
                                       description: "New Category for #{category_in_csv}",
                                       parent: nil)
          end

          product.categories << category
        end
      end
    end
  end
end

