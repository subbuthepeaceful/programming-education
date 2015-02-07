class Catalog < ActiveRecord::Base
  has_many :products
  has_many :categories

  validates :name, presence: true, uniqueness: true
end