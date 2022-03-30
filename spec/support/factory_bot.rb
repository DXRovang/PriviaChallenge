RSpec.configure do |config|
 config.include FactoryBot::Syntax::Methods
end

# FactoryBot.define do
#   factory :user do
#     first_name { "John" }
#     last_name  { "Doe" }
#     email { "JohnDoes@email.com" }
#     city { "Albany" }
#     state { "NY" }
#     score { 100 }
#   end
# end