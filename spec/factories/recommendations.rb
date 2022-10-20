FactoryBot.define do
  factory :recommendation do
    title             {'テスト'}
    category_id       { Faker::Number.between(from: 1, to: 11) }
    memo              {'テスト'}
  end
  
  after(:build) do |recommendation|
    recommendation.image.attach(io: File.open('public/images/test_image.jpeg'), filename: 'test_image.jpeg')
  end
  
end