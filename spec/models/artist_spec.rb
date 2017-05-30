require "rails_helper"

RSpec.describe Artist, type: :model do
  let(:artist) { create(:artist, :attached) }
  let(:articles) { create_pair(:article, :attached, artist: artist) }
  let(:exhibitions) { create_pair(:exhibition, :attached) }

  it "すべての要素があれば有効" do
    expect(artist).to be_valid
  end

  context "nameの検証" do
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

  context "descriptionの検証" do
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

  context "biographyの検証" do
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

  context "relationテスト" do
    it "articleの要素があれば有効" do
      expect(artist.articles).to match_array articles
    end

    it "artistを削除するとarticleも削除されている" do
      articles
      expect { artist.destroy }.to change { Article.count }.by(-2)
    end

    it "exhibitionとの関連があれば有効" do
      artist.exhibitions << exhibitions
      expect(artist.exhibitions).to match_array exhibitions
    end
  end
end
