require 'rails_helper'

RSpec.describe Topic, type: :model do
  let(:topic) { create(:topic, :attached) }

  it "全ての要素が入力していれば有効" do
    expect(topic).to be_valid
  end

  it "titleがなければ無効" do
    topic[:title] = nil
    expect(topic).not_to be_valid
  end

  it "画像をアップロードしていれば有効" do
    expect(topic.cover_image_file_name).not_to be_nil
  end
end
