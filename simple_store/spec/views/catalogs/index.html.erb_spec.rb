require 'rails_helper'

RSpec.describe "catalogs/index", type: :view do
  before(:each) do
    assign(:catalogs, [
      Catalog.create!(),
      Catalog.create!()
    ])
  end

  it "renders a list of catalogs" do
    render
  end
end
