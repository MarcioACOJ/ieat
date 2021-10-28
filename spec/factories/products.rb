FactoryBot.define do
    factory :product do
        name { Faker::Games::Pokemon.move }
        value { rand(100) }
        restaurant 
    end
end
