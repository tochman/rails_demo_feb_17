FactoryGirl.define do
  factory :comment do
    email 'test@test.com'
    content 'A random comment'
    article nil
  end
end
