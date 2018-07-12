FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password "secretPassword"
    password_confirmation "secretPassword"
    confirmed_at Time.now
  end

  factory :vacation do
    
  end
  
  factory :unavailability do
    
  end

  factory :availability do
    day 0
    day_start "2000-01-01 09:00:00 UTC"
    day_end "2000-01-01 17:00:00 UTC"
    association :vendor
    association :user
  end
  
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

  factory :category do 
    
  end 
  
  factory :vendor do
    association :category, factory: :category
    first_name "Zel"
    last_name "Williams"
    name "Sherzel's Nail Spa"
    country "BS"
    city "Nassau"
    address "#67 Ameryllis Avenue"
    zip "EE16623"
    phone1 "2423416601"
    phone2 "2425350365"
    website "dummywebsite.com"
    facebook "dummyfacebook.com"
    consent true
    association :user
  end
  
end