require 'rails_helper'

RSpec.describe MainImage, type: :model do
  let(:main_image) { create(:main_image, :attached) }

  it "すべての要素があれば有効" do
    expect(main_image).to be_valid
  end

  it "titleがなければ無効" do
    main_image[:title] = nil
    expect(main_image).not_to be_valid
  end

  it "imageがなければ無効" do
    main_image[:image_file_name] = nil
    main_image.valid?
    expect(main_image.errors[:image]).to include("can't be blank")
  end

  it "activeがなければ無効" do
    main_image[:active] = nil
    expect(main_image).not_to be_valid
  end

  it "画像をアップロードしていれば有効" do
    expect(main_image.image_file_name).not_to be_nil
  end
end
