require "rails_helper"

RSpec.describe Exhibition, type: :model do
  let(:exhibition) { create(:exhibition) }
  let(:artist) { create(:artist, :attached) }
  let(:artists) { create_list(:artist, 2, :attached) }
  let(:artworks) { create_list(:artwork, 10, :attached, artist: artist) }

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
    expect(exhibition.errors[:cover_image]).to include("を入力してください")
  end

  it "cover_imageがあれば有効" do
    expect(exhibition).to have_attached_file(:cover_image)
  end

  context "relationテスト" do

    it "artistsとの関連があれば有効" do
      exhibition.artists << artists
      expect(exhibition.artists).to match_array artists
    end

    it "artistの参加するexhibitionはartistのartworkは登録できる" do
      exhibition.artists << artist
      artworks
      @exhibition_artist = Connection.where(exhibition_id: exhibition.id).find_by(artist_id: artist.id)
      @exhibition_artist.artworks << artworks
      expect(@exhibition_artist.artworks).to match_array artworks
    end

    it "artistの参加しないexhibitionにartistのartworkは登録できない" do
      artist
      artists
      artworks
      exhibition.artists << artists
      @exhibition_artist = Connection.where(exhibition_id: exhibition.id).find_by(artist_id: artists.first.id)
      expect(@exhibition_artist.artworks << artworks).to be_falsey
    end

    it "exhibitionからartistを削除するとartworkもexhibitionから消える"
  end
end
