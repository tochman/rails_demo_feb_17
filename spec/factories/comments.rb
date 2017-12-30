FactoryBot.define do
  factory :comment do
    email 'test@test.com'
    content 'A random comment'
    article nil
    state :submitted
  end
end
