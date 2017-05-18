require "rails_helper"

RSpec.describe Exhibition, type: :model do
  let(:exhibition) { create(:exhibition, :attached) }

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

  it "画像をアップロードしていれば有効" do
    expect(exhibition.cover_image_file_name).not_to be_nil
  end
end
