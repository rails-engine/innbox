FactoryGirl.define do
  factory :message, class: Message do
    association :sender, factory: :user
    association :receiver, factory: :user
    sequence(:title) { |n| "Title #{n}" }
    sequence(:body) { |n| "Body #{n}" }
  end
end
