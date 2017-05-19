FactoryGirl.define do
  factory :main_image do
    title "dummy image"
    active true

    trait :attached do
      image { fixture_file_upload("#{Rails.root}/spec/fixtures/dummy.jpg") }
    end
  end
end
