class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :name, null: false
      t.boolean :active, default: false
    end
  end
end
