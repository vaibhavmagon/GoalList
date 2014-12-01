# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :like do
    likeable_id 1
    likeable_type "MyString"
  end
end
