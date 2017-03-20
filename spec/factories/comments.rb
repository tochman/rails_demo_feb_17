FactoryGirl.define do
  factory :comment do
    body "MyText"
    email "MyString"
    article nil
  end
end
