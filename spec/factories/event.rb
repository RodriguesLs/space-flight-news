FactoryBot.define do
  factory :event do
    article
    provider { 'Some provider' }
  end
end
