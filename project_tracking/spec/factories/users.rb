FactoryGirl.define do 
  factory :user do
    first_name "Clark"
    last_name "Kent"
    email "superman@krypton.com"
    password "passW1234"
    password_confirmation "passW1234"
  end
end