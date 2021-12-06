FactoryBot.define do
  factory :article do
    title { 'MyTitle' }
    featured { true }
    url { FFaker::Internet.http_url }
  end
end