require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      article = create(:article)
      get :show, params: { id: article }
      expect(response).to have_http_status(:success)
    end
  end

end
