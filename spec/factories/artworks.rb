FactoryGirl.define do
  factory :artwork do
    title_ja { Faker::Lorem.sentence }
    title_en { Faker::Lorem.sentence }
    description_ja { Faker::Lorem.paragraph }
    description_en { Faker::Lorem.paragraph }

    trait :attached do
      image { fixture_file_upload("#{Rails.root}/spec/fixtures/dummy.jpg") }
    end
  end
end
