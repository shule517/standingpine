FactoryGirl.define do
  factory :artist do
    name_ja { Faker::Lorem.sentence }
    name_en { Faker::Lorem.sentence }
    description_ja { Faker::Lorem.paragraph }
    description_en { Faker::Lorem.paragraph }
    biography_ja { Faker::Lorem.paragraph }
    biography_en { Faker::Lorem.paragraph }
    regular true
    web_site { Faker::Internet.url }

    trait :attached do
      cover_image_file_name { 'dummy.jpg' }
      cover_image_content_type { 'image/jpg' }
      cover_image_file_size { 123 }
      cover_image_updated_at { Time.now }
    end

    trait :non_regular do
      regular false
    end
  end
end
