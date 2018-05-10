class Vendor < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :phone1, presence: true 
  validates :consent, presence: true
end
