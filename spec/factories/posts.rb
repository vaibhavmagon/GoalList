# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    message "MyText"
    created_at "2012-08-30"
  end
end
