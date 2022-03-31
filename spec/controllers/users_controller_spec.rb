require 'spec_helper'
require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "GET #index" do
    let(:user) { create :user }
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to have_http_status(200)
    end
    it "should return the index template" do
      get :index
      expect(response).to render_template("index")
    end
    it "populates an array of users" do
      get :index
      expect(User.all).to include(user)
    end
  end

  describe "GET #show" do
    let(:user) { create :user }
    it "responds successfully with an HTTP 200 status code" do
      get :show, params:  { id: user.id }
      expect(response).to have_http_status(200)
    end
    it "should return the show template" do
      get :show, params: { id: user.id }
      expect(response).to render_template :show
    end
    it "should return the user" do
      get :show, params: { id: user.id }
      expect(assigns(:user)).to eq user
    end
  end

  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to have_http_status(200)
    end
    it "should return the new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    let(:user) { create :user }
    it "responds successfully with an HTTP 200 status code" do
      get :edit, params:  { id: user.id }
      expect(response).to have_http_status(200)
    end
    it "should return the edit template" do
      get :edit, params: { id: user.id }
      expect(response).to render_template :edit
    end
    it "should return the user" do
      get :edit, params: { id: user.id }
      expect(assigns(:user)).to eq user
    end
  end


end


