require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "does not allow two users to have the same email address" do
    example_user_1 = User.new(
      first_name: 'Example',
      last_name: 'User_1',
      email: 'exampleuser1@example.com',
      password: 'passW12345',
      password_confirmation: 'passW12345' 
      )
    example_user_1.skip_confirmation!
    example_user_2 = User.new(
      first_name: 'Example',
      last_name: 'User_2',
      email: 'exampleuser1@example.com',
      password: 'passW12345',
      password_confirmation: 'passW12345' 
      )
    example_user_2.skip_confirmation!

    expect(example_user_1.save).to be_truthy
    expect(example_user_2.save).to be_falsey
  end 

  it "should require a super strong password" do
    example_user_1 = User.new(
      first_name: 'Example',
      last_name: 'User_1',
      email: 'exampleuser1@example.com',
      password: 'ABC123456',
      password_confirmation: 'ABC123456' 
      )
    example_user_1.skip_confirmation!
    expect(example_user_1.save).to be_falsey
  end
end
