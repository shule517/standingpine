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
      cover_image { fixture_file_upload("#{Rails.root}/spec/fixtures/dummy.jpg") }
    end

    trait :non_regular do
      regular false
    end
  end
end
