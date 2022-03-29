require './app/models/user'
# require './app/models/application_record'

describe 'User' do
  it 'has a first name' do
    u = User.new
    user = u.first_name("Eric")
    expect(user).to be_truthy
  end
end

