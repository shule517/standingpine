FactoryGirl.define do
  factory :article do
    title_ja { Faker::Lorem.sentence }
    title_en { Faker::Lorem.sentence }
    sub_title_ja { Faker::Lorem.sentence }
    sub_title_en { Faker::Lorem.sentence }
    content_ja { Faker::Lorem.paragraph }
    content_en { Faker::Lorem.paragraph }
    link { Faker::Internet.url }
    published_at { Faker::Date.backward((1..30).to_a.sample) }

    trait :attached do
      cover_image { fixture_file_upload("#{Rails.root}/spec/fixtures/dummy.jpg") }
    end
  end
end
