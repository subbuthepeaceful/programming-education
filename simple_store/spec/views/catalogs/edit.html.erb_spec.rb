require 'rails_helper'

RSpec.describe "catalogs/edit", type: :view do
  before(:each) do
    @catalog = assign(:catalog, Catalog.create!())
  end

  it "renders the edit catalog form" do
    render

    assert_select "form[action=?][method=?]", catalog_path(@catalog), "post" do
    end
  end
end
