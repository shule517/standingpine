FactoryGirl.define do
  factory :exhibition do

    content_in_ja
    content_in_en
    starting_on "2017-05-17 16:54:14"
    ending_on "2017-05-17 16:54:14"
    cover_image_file_name { 'dummy.jpg' }
    cover_image_content_type { 'image/jpg' }
    cover_image_file_size { 123 }
    cover_image_updated_at { Time.now }

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
