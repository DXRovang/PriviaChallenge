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
    it "loads all of the users inot @users" do
      user = create(:user)
      get :index
      expect(User.all).to include(user)
    end
  end
end
# describe UsersController do

#   describe "GET #index" do
#     it "populates an array of users" do
#       user = create(:user)
#       get :index
#       expect(User.all).to include(user)
#     end
#     it "renders the :index view" do
#       get :index
#       response.should render_template :index
#     end
#   end
  
#   describe "GET #show" do

#     it "renders the :show template" do
#       @user = FactoryBot.create(:user)
#       params = { id: 123 }
#       get :show, params
#       expect(@user).to be(:user)
#     end
#   end
  

#   describe "GET #new" do

#     it "renders the :new template" do
#       get :new
#       response.should render_template :new
#     end
#   end
  

  

# end