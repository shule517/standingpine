FactoryGirl.define do
  factory :topic do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
    link { Faker::Internet.url }
    published_at { Faker::Date.backward((1..30).to_a.sample) }

    trait :attached do
      cover_image { fixture_file_upload("#{Rails.root}/spec/fixtures/dummy.jpg") }
    end
  end
end
