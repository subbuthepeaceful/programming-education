describe Catalog do
  it 'should have a Name' do
    c = Catalog.create(name: 'Master Simple Store Catalog')
  end

  it 'should have at least one Catalog that is active' do
    c = Catalog.where(active: true)
    c.should_not be_empty
  end

end