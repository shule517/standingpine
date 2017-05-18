require "rails_helper"

RSpec.describe Topic, type: :model do
  let(:topic) { create(:topic, :attached) }

  it "全ての要素が入力していれば有効" do
    expect(topic).to be_valid
  end

  context "titleの検証" do
    it "title_jaとtitle_enがなければ無効" do
      topic[:title_ja] = nil
      topic[:title_en] = nil
      expect(topic).not_to be_valid
    end

    it "title_jaがなくても有効" do
      topic[:title_ja] = nil
      expect(topic).to be_valid
    end

    it "title_enがなくても有効" do
      topic[:title_en] = nil
      expect(topic).to be_valid
    end
  end

  it "画像をアップロードしていれば有効" do
    expect(topic.cover_image_file_name).not_to be_nil
  end
end
