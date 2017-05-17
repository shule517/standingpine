FactoryGirl.define do
  factory :article do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }

    trait :attached do
      image { fixture_file_upload("#{Rails.root}/spec/fixtures/dummy.jpg") }
    end
  end
end
