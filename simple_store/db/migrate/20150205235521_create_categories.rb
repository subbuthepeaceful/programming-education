class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.text :description
      
      t.belongs_to :catalog
      t.references :parent

    end
  end
end
