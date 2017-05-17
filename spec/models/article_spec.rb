require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { create(:article, :attached) }

  it "すべての要素があれば有効" do
    expect(article).to be_valid
  end

  it "titleがなければ無効" do
    article[:title] = nil
    article.valid?
    expect(article.errors[:title]).to include("can't be blank")
  end

  it "imageがなければ無効" do
    article[:image_file_name] = nil
    article.valid?
    expect(article.errors[:image]).to include("can't be blank")
  end

  it "画像をアップロードしていれば有効" do
    expect(article.image_file_name).not_to be_nil
  end
end
