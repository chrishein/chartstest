# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :data_point do
    data_topic 1
    country 1
    year 1
    value "9.99"
  end
end
