require "rails_helper"

RSpec.describe MailingList do
  let(:mailing_list) { MailingList.new }
  let(:email) { Faker::Internet.email }

  before :each do
    mailing_list.contact_list.each do |contact|
      mailing_list.remove_contact(contact)
    end
  end

  describe '#contact_present?' do
    context 'メールドアレスが登録されていない場合' do
      it 'falseを返すこと' do
        expect(mailing_list.contact_present?(email)).to be_falsey
      end
    end

    # context 'メールドアレスが登録されている場合' do
    #   it 'trueを返すこと' do
    #     mailing_list.add_contact(email)
    #     expect(mailing_list.contact_present?(email)).to be_truthy
    #   end
    # end
  end

  describe '#contact_list' do
    context '0件の場合' do
      it '取得結果が空であること' do
        expect(mailing_list.contact_list).to be_empty
      end
    end

  #   context '1件の場合' do
  #     it '1件取得できること' do
  #       expect(mailing_list.add_contact(email)).to eq true
  #       expect(mailing_list.contact_list).to eq [email]
  #     end
  #   end

  #   xcontext '複数件の場合' do
  #     it '複数件取得できること' do
  #       mails = 3.times.map do |i|
  #         "#{i}@gmail.com"
  #       end
  #       mails.each do |mail|
  #         expect(mailing_list.add_contact(mail)).to eq true
  #       end
  #       expect(mailing_list.contact_list?).to eq mails
  #     end
  #   end
  end

  # describe '#add_contact' do
  #   context '新規追加の場合' do
  #     it 'メールアドレスを追加できること' do
  #       expect(mailing_list.add_contact(email)).to eq true
  #       expect(mailing_list.contact_present?(email)).to eq true
  #     end
  #   end

  #   context '既に追加されている場合' do
  #     it '操作しないこと' do
  #       expect(mailing_list.add_contact(email)).to eq true # 新規登録
  #       expect(mailing_list.add_contact(email)).to eq false # 既に登録済み
  #       expect(mailing_list.contact_present?(email)).to eq true
  #     end
  #   end
  # end

  # xdescribe '#remove_contact' do
  #   context '削除対象がある場合' do
  #     it 'メールアドレスを削除できること' do
  #       expect(mailing_list.add_contact(email)).to eq true # 登録成功
  #       expect(mailing_list.remove_contact(email)).to eq true # 削除成功
  #       expect(mailing_list.contact_present?(email)).to eq false
  #     end
  #   end

  #   context '削除対象がない場合' do
  #     it '操作しないこと' do
  #       expect(mailing_list.remove_contact(email)).to eq false # 削除対象なし
  #       expect(mailing_list.contact_present?(email)).to eq false
  #     end
  #   end
  # end
end
