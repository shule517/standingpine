FactoryGirl.define do
  factory :exhibition do

    content_in_ja
    content_in_en
    starting_on "2017-05-17 16:54:14"
    ending_on "2017-05-17 16:54:14"
    cover_image { fixture_file_upload("#{Rails.root}/spec/fixtures/dummy.jpg") }

    trait :content_in_ja do
      title_ja { Faker::Lorem.sentence }
      sub_title_ja { Faker::Lorem.sentence }
      addition_ja { Faker::Lorem.sentence }
      description_ja { Faker::Lorem.paragraph }
    end

    trait :content_in_en do
      title_en { Faker::Lorem.sentence }
      sub_title_en { Faker::Lorem.sentence }
      addition_en { Faker::Lorem.sentence }
      description_en { Faker::Lorem.paragraph }
    end
  end
end
