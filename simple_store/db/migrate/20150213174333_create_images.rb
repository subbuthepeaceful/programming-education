class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :imageable, polymorphic: true
      t.string :image
      t.timestamps
    end
  end
end
