require 'rails_helper'

RSpec.describe Artist, type: :model do
  let(:artist) { create(:artist, :attached) }

  it "すべての要素があれば有効" do
    expect(artist).to be_valid
  end

  it "nameがなければ無効" do
    artist[:name] = nil
    artist.valid?
    expect(artist.errors[:name]).to include("can't be blank")
  end

  it "descriptionがなければ無効" do
    artist[:description] = nil
    artist.valid?
    expect(artist.errors[:description]).to include("can't be blank")
  end

  it "biographyがなければ無効" do
    artist[:biography] = nil
    artist.valid?
    expect(artist.errors[:biography]).to include("can't be blank")
  end

  it "cover_imageがなければ無効" do
    artist[:cover_image_file_name] = nil
    artist.valid?
    expect(artist.errors[:cover_image]).to include("can't be blank")
  end

  it "web_siteがなくても有効" do
    artist[:web_site] = nil
    expect(artist).to be_valid
  end

  it "画像をアップロードしていれば有効" do
    expect(artist.cover_image_file_name).not_to be_nil
  end

  it "regularがtrueなら有効" do
    expect(artist.regular?).to eq true
  end

  it "regularがfalseなら有効" do
    artist[:regular] = false
    expect(artist.regular).not_to eq true
  end
end
