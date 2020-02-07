FactoryBot.define do
  factory :shop do
    sequence(:name) {Faker::Internet.name}
    genre {"tai"}
    sequence(:address) {Faker::Internet.mac_address}
    holiday {"月曜日"}
    japanese_staff {"0人"}
    map_code {"https://goo.gl/maps/EJumLjyz63fYmKNj9"}
    open_hours {10}
    close_hours {22}
  end
end