require 'rails_helper'

describe Catalog do
  it 'should have at least one Catalog that is active' do
    active_catalogs = Catalog.where(active: true)
    expect(active_catalogs).not_to be_empty
  end

end