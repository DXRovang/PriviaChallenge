require 'spec_helper'
require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to have_http_status(200)
    end
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
    it "populates an array of users" do
      user = create(:user)
      get :index
      expect(User.all).to include(user)
    end
  end
end


