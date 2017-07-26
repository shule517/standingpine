FactoryGirl.define do
  factory :artwork do
    title_ja { Faker::Lorem.sentence }
    title_en { Faker::Lorem.sentence }
    description_ja { Faker::Lorem.paragraph }
    description_en { Faker::Lorem.paragraph }

    trait :attached do
      image_file_name { 'dummy.jpg' }
      image_content_type { 'image/jpg' }
      image_file_size { 123 }
      image_updated_at { Time.now }
    end
  end
end
