# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :envrionment do
    project_id 1
    name "MyString"
    is_production false
    in_use_by 1
  end
end
