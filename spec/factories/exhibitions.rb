FactoryGirl.define do
  factory :exhibition do
    title_ja { Faker::Lorem.sentence }
    title_en { Faker::Lorem.sentence }
    sub_title_ja { Faker::Lorem.sentence }
    sub_title_en { Faker::Lorem.sentence }
    addition_ja { Faker::Lorem.sentence }
    addition_en { Faker::Lorem.sentence }
    starting_on "2017-05-17 16:54:14"
    ending_on "2017-05-17 16:54:14"
    description_ja { Faker::Lorem.paragraph }
    description_en { Faker::Lorem.paragraph }

    trait :attached do
      cover_image { fixture_file_upload("#{Rails.root}/spec/fixtures/dummy.jpg") }
    end
  end
end
