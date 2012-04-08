# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :step do
    user nil
    date "2012-04-08"
    steps 1
  end
end
