require "rails_helper"

RSpec.describe Artwork, type: :model do
  let(:artist) { create(:artist, :attached) }
  let(:artwork) { create(:artwork, :attached, artist: artist) }
  let(:exhibitions) { create_list(:exhibition, 5) }

  it "すべての要素があれば有効" do
    expect(artwork).to be_valid
  end

  context "titleの検証" do
    it "title_jaとtitle_enがなければ無効" do
      artwork[:title_ja] = nil
      artwork[:title_en] = nil
      expect(artwork).not_to be_valid
    end

    it "title_jaがなくても有効" do
      artwork[:title_ja] = nil
      expect(artwork).to be_valid
    end

    it "title_enがなくても有効" do
      artwork[:title_en] = nil
      expect(artwork).to be_valid
    end
  end

  it "imageがなければ無効" do
    artwork[:image_file_name] = nil
    artwork.valid?
    expect(artwork.errors[:image]).to include("を入力してください")
  end

  it "画像をアップロードしていれば有効" do
    expect(artwork.image_file_name).not_to be_nil
  end

  context "relationテスト" do
    it "artistsとの関連があれば有効" do
      expect(artwork.artist).to eq artist
    end

    it "custom validationのエラーメッセージ確認"
  end
end
