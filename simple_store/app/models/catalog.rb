class Catalog < ActiveRecord::Base
  has_many :products
  has_many :categories

  has_many :images, as: :imageable
  accepts_nested_attributes_for :images

  validates :name, presence: true, uniqueness: true


end