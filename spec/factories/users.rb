FactoryGirl.define do
  factory :user do
    name 'Random Guy'
    email 'random@random.com'
    password 'password'
    subscriber false
    owner false
  end
end
