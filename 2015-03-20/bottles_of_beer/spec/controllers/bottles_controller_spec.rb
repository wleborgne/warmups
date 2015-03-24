require 'rails_helper'

RSpec.describe BottlesController, type: :controller do

  describe "GET #bottles" do
    it "returns http success" do
      get :bottles
      expect(response).to have_http_status(:success)
    end
  end

end
