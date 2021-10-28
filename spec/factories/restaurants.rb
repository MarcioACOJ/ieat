FactoryBot.define do
    factory :restaurant do
        name { Faker::Games::Pokemon.name }
        address { Faker::Games::Pokemon.location }
    end
end

