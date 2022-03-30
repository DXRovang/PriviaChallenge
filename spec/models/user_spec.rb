require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a first name" do
    u = User.new
    u.first_name = "Eric"
    expect(u.first_name).to eq("Eric")
  end

  it "has a last name" do
    u = User.new
    u.last_name = "Sturlsson"
    expect(u.last_name).to eq("Sturlsson")
  end

  it "has an email" do
    u = User.new
    u.email = "Eric@gmail.com"
    expect(u.email).to eq("Eric@gmail.com")
  end

  it "has a city" do
    u = User.new
    u.city = "Vals"
    expect(u.city).to eq("Vals")
  end

  it "has a state" do
    u = User.new
    u.state = "Norway"
    expect(u.state).to eq("Norway")
  end

  it "has a score" do
    u = User.new
    u.score = 5
    expect(u.score).to eq(5)
  end
end


# RSpec.describe 'Users', type: :request do
#   it "assigns all users to @users" do
#     get users_path
#     expect(assigns(:users)).to eq(User.all)
#   end
 
end
 


