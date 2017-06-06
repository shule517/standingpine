require "rails_helper"

RSpec.describe Exhibition, type: :model do
  let(:exhibition) { create(:exhibition) }
  let(:artist) { create(:artist, :attached) }
  let(:artists) { create_list(:artist, 2, :attached) }
  let(:articles) { create_list(:article, 10, :attached, artist: artist) }

  it "すべての要素があれば有効" do
    expect(exhibition).to be_valid
  end

  context "titleの検証" do
    it "title_jaとtitle_enがなければ無効" do
      exhibition[:title_ja] = nil
      exhibition[:title_en] = nil
      expect(exhibition).not_to be_valid
    end

    it "title_jaがなくても有効" do
      exhibition[:title_ja] = nil
      expect(exhibition).to be_valid
    end

    it "title_enがなくても有効" do
      exhibition[:title_en] = nil
      expect(exhibition).to be_valid
    end
  end

  context "descriptionの検証" do
    it "description_jaとdescription_enがなければ無効" do
      exhibition[:description_ja] = nil
      exhibition[:description_en] = nil
      expect(exhibition).not_to be_valid
    end

    it "description_jaがなくても有効" do
      exhibition[:description_ja] = nil
      expect(exhibition).to be_valid
    end

    it "description_enがなくても有効" do
      exhibition[:description_en] = nil
      expect(exhibition).to be_valid
    end
  end

  it "cover_imageがなければ無効" do
    exhibition[:cover_image_file_name] = nil
    exhibition.valid?
    expect(exhibition.errors[:cover_image]).to include("can't be blank")
  end

  it "cover_imageがあれば有効" do
    expect(exhibition).to have_attached_file(:cover_image)
  end

  context "relationテスト" do

    it "artistsとの関連があれば有効" do
      exhibition.artists << artists
      expect(exhibition.artists).to match_array artists
    end

    it "artistの参加するexhibitionにarticleがあれば有効" do
      exhibition.artists << artist
      articles
      exhibition.articles << articles
      expect(exhibition.articles).to match_array articles
    end

    it "artistの参加しないexhibitionにarticleがあれば無効" do
      artist
      articles
      exhibition.exhibition_articles.build(article_id: articles.first.id)
      exhibition.valid?
      expect(exhibition.errors[:exhibition_articles]).to include "is invalid"
    end
  end
end
