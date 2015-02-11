class AddProductTypes < ActiveRecord::Migration
  def change
    # Field for Single Table Inheritance
    add_column :products, :type, :string

    # Fields for Apparel
    add_column :products, :gender, :string
    add_column :products, :size, :string
    add_column :products, :color, :string
    add_column :products, :fabric, :string

    # Fields for Luggage
    add_column :products, :capacity, :string
    add_column :products, :shell, :string


    # Fields for Cutlery
    add_column :products, :finish, :string
    add_column :products, :unit_quantity, :integer

  end
end
