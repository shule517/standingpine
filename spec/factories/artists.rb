FactoryGirl.define do
  factory :artist do
    name { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    biography { Faker::Lorem.paragraph }
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
