FactoryGirl.define do
  factory :user do |user|
    sequence(:email) { |n| "email#{n}@gmail.com" }
    password 'rubyruby'
    password_confirmation 'rubyruby'
  end
end