# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :milestone do
    title "MyString"
    body "MyText"
    created_at "2012-08-28"
  end
end
