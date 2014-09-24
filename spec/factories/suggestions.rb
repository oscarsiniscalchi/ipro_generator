# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :suggestion do
    description "MyText"
    type ""
    user nil
  end
end
