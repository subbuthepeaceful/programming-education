require 'rails_helper'

describe Category do
  it "should have at least one Root level Category" do
    expect(Category.where(parent: nil)).not_to be_empty
  end

  it "should have at least 1 product in it" do
    all_cats = Category.all
    all_cats.each do |c|
      expect(c.products.size).to be > 0
    end
  end

end