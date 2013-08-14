# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    unique_id "MyString"
    access_token "MyString"
  end
end
