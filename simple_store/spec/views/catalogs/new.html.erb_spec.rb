require 'rails_helper'

RSpec.describe "catalogs/new", type: :view do
  before(:each) do
    assign(:catalog, Catalog.new())
  end

  it "renders new catalog form" do
    render

    assert_select "form[action=?][method=?]", catalogs_path, "post" do
    end
  end
end
