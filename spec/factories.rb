FactoryBot.define do
  factory :vendor do
    name "Sherzel's Nail Spa"
    country "BS"
    city "Nassau"
    address "#67 Ameryllis Avenue"
    zip "EE16623"
    phone1 "2423416601"
    phone2 "2425350365"
    company_email "sherzelnailspa@gmail.com"
    consent true
    association :user
  end
end