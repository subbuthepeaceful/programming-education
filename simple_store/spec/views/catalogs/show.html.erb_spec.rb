require 'rails_helper'

RSpec.describe "catalogs/show", type: :view do
  before(:each) do
    @catalog = assign(:catalog, Catalog.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
