class Vendor < ApplicationRecord
  extend FriendlyId
  mount_uploader :profile_image, ProfileImageUploader
  friendly_id :name, use: :slugged

  geocoded_by :full_address
  after_validation :geocode

  belongs_to :user
  belongs_to :category
  has_many :services, dependent: :destroy
  has_many :availabilities, dependent: :destroy
  has_many :unavailabilities
  has_many :vacations
  has_many :bookings
  has_many :clients, through: :bookings

  after_create :send_vendor_created_email

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :name, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :phone1, presence: true 
  validates :consent, presence: true
  

  def country_name
    c = ISO3166::Country[self.country]
    return c.translations[I18n.locale.to_s] || c.name
  end 

  def send_vendor_created_email
    NotificationMailer.vendor_created(self).deliver_now
  end 

  def full_address
    [address, city, country].compact.join(', ')
  end
end
