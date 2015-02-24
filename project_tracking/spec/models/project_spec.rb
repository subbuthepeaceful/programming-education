require 'rails_helper'

RSpec.describe Project, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "should not accept a start date in the past" do
    expect(build(:project)).to_not be_valid 
  end
end
