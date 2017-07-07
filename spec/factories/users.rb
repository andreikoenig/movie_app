FactoryGirl.define do
  factory :user do
    email "henry@example.com"
    first_name "Henry"
    last_name "Smith"
    birthday Date.new(1988,5,1)
    password "password"
    password_confirmation "password"
  end
end
