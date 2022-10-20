FactoryBot.define do
  factory :work do
    title             {'テスト'}
    day               { Faker::Date.between(from: 1.days.ago, to: Date.today) }
    category_id       { Faker::Number.between(from: 1, to: 11) }
    star_id           { Faker::Number.between(from: 1, to: 5) }
    memo              {'テスト'}
  end

  after(:build) do |work|
    work.image.attach(io: File.open('public/images/test_image.jpeg'), filename: 'test_image.jpeg')
  end

end