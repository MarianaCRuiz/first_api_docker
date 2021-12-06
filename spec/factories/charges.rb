FactoryBot.define do
  factory :charge do
    book_id { 1 }
    price { 10.0 }
    discount { 2.0 }
    client_id { 1 }
  end
end
