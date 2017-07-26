require "rails_helper"

RSpec.describe ExhibitionsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      exhibition = create(:exhibition)
      get :show, params: { id: exhibition }
      expect(response).to have_http_status(:success)
    end
  end

end
