# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :app do
    name "MyString"
    description "MyText"
    rating "9.99"
    ratings 1
    user_id 1
  end
end
