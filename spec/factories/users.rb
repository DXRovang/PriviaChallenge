FactoryBot.define do
factory :user do |u|
  u.first_name { "John" }
  u.last_name { "Doe" }
  u.email { "JohnDoe@email.com" }
  u.city { "Albany" }
  u.state { "NY" }
  u.score { 101 }
end

factory :invalid_user, parent: :user do |u|
  u.first_name nil
end
end