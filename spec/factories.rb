FactoryBot.define do
  factory :admin do
    
  end
  factory :tagging do
    tag nil
    service nil
  end
  factory :tag do
    name "MyString"
  end
  factory :service do
    name "Basic Manicure"
    description "Basic manicure, including massage, cuticle oil, and basic nail polish (no gel polish)"
    hours 0
    minutes 25
    cost_absolute 20.00
    association :vendor
    association :user
  end
  
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