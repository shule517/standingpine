FactoryGirl.define do
  factory :main_image do
    title "dummy image"
    active true

    trait :attached do
      image_file_name { 'dummy.jpg' }
      image_content_type { 'image/jpg' }
      image_file_size { 123 }
      image_updated_at { Time.now }
    end
  end
end
