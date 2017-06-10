require "rails_helper"

RSpec.describe Article, type: :model do
  let(:article) { create(:article, :attached) }

  it "全ての要素が入力していれば有効" do
    expect(article).to be_valid
  end

  context "titleの検証" do
    it "title_jaとtitle_enがなければ無効" do
      article[:title_ja] = nil
      article[:title_en] = nil
      expect(article).not_to be_valid
    end

    it "title_jaがなくても有効" do
      article[:title_ja] = nil
      expect(article).to be_valid
    end

    it "title_enがなくても有効" do
      article[:title_en] = nil
      expect(article).to be_valid
    end
  end

  it "画像をアップロードしていれば有効" do
    expect(article.cover_image_file_name).not_to be_nil
  end
end
