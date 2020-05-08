FactoryBot.define do
  factory :customer do
    firstname         { Faker::Name.first_name }
    lastname          { Faker::Name.last_name  }
    email             { Faker::Internet.email }
    phone_number      { Faker::Config.locale = 'fr'; Faker::PhoneNumber.cell_phone }
    city              { Faker::Address.city }
    profil_picture    { "MyText" }
    language           { Faker::Address.country_code }
    membership_amount { rand(1..1000) * 100 }
    state             { Customer::USER_STATE.sample }
  end
end
