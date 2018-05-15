class Vendor < ApplicationRecord
  belongs_to :user
  has_many :services, dependent: :destroy
  after_create :send_vendor_created_email

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
end
