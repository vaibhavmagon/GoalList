# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    Born_on "2012-09-01"
    Gender "MyString"
    Location "MyString"
    About "MyText"
  end
end
