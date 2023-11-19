# spec/factories/users.rb (for RSpec)
# test/factories/users.rb (for Minitest)

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email }
    password { 'password' }
    password_confirmation { 'password' }
    jti { Faker::Alphanumeric.alpha(number: 10) }
  end
end
