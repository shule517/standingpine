require "rails_helper"

RSpec.describe Artist, type: :model do
  let(:artist) { create(:artist, :attached) }
  let(:artworks) { create_pair(:artwork, :attached, artist: artist) }
  let(:exhibitions) { create_pair(:exhibition) }

  it "すべての要素があれば有効" do
    expect(artist).to be_valid
  end

  describe "nameの検証" do
    it "name_jaとname_enがなければ無効" do
      artist[:name_ja] = nil
      artist[:name_en] = nil
      expect(artist).not_to be_valid
    end

    it "name_jaが無くても有効" do
      artist[:name_ja] = nil
      expect(artist).to be_valid
    end

    it "name_enが無くても有効" do
      artist[:name_en] = nil
      expect(artist).to be_valid
    end
  end

  describe "descriptionの検証" do
    it "description_jaとdescription_enがなければ無効" do
      artist[:description_ja] = nil
      artist[:description_en] = nil
      expect(artist).not_to be_valid
    end

    it "description_jaが無くても有効" do
      artist[:description_ja] = nil
      expect(artist).to be_valid
    end

    it "description_enが無くても有効" do
      artist[:description_en] = nil
      expect(artist).to be_valid
    end
  end

  describe "biographyの検証" do
    it "biography_jaとbiography_enがなければ無効" do
      artist[:biography_ja] = nil
      artist[:biography_en] = nil
      expect(artist).not_to be_valid
    end

    it "biography_jaが無くても有効" do
      artist[:biography_ja] = nil
      expect(artist).to be_valid
    end

    it "biography_enが無くても有効" do
      artist[:biography_en] = nil
      expect(artist).to be_valid
    end
  end

  it "cover_imageがなければ無効" do
    artist[:cover_image_file_name] = nil
    artist.valid?
    expect(artist.errors[:cover_image]).to include("を入力してください")
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

  describe "relationテスト" do
    it "artworkの要素があれば有効" do
      expect(artist.artworks).to match_array artworks
    end

    it "artistを削除するとartworkも削除されている" do
      artworks
      expect { artist.destroy }.to change { Artwork.count }.by(-2)
    end

    it "exhibitionとの関連があれば有効" do
      artist.exhibitions << exhibitions
      expect(artist.exhibitions).to match_array exhibitions
    end
  end
end
