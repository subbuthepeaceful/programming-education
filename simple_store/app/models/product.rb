class Product < ActiveRecord::Base
  belongs_to :catalog

  has_and_belongs_to_many :categories

  has_many :images, as: :imageable
end
