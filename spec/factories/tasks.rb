# spec/factories/tasks.rb

FactoryBot.define do
  factory :task do
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    due_date { Faker::Date.forward(days: 7) }
    completion { false }
    priority { %w[low medium high].sample }
    association :category
  end
end
