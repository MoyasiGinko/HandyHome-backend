FactoryBot.define do
  factory :reservation do
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    image { Faker::LoremPixel.image }
    location { Faker::Address.city }
    price { Faker::Number.decimal(l_digits: 2) }
    duration { Faker::Number.number(digits: 2) }
    trade_type { 'Reservation' }
    user { association :user }
    trade { association :trade }
  end
end
