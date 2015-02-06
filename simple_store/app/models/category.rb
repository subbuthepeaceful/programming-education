class Category < ActiveRecord::Base
  belongs_to :catalog

  has_many :sub_categories, class_name: "Category", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Category"

  has_and_belongs_to_many :products
end