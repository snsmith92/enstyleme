class Booking < ApplicationRecord
  belongs_to :client
  belongs_to :vendor
  belongs_to :booking_status
  has_many :booking_items, dependent: :destroy
  
  before_validation :set_booking_status
  before_validation :set_vendor_id
  before_save :update_booking_total_price
  before_save :update_booking_duration
  before_save :set_client_id
  before_save :set_vendor_id
  
  
  # validates :client_name, presence: true
  # validates :phone, presence: true
  
  def total_price 
    booking_items.map { |item| item.service.cost_absolute.present? ? item.service.cost_absolute : 0 }.sum
  end 

  def total_duration_minutes
    booking_items.map { |item| ((item.service.hours * 60) + item.service.minutes) }.sum
  end 

  def client_id 
    booking_items[-1].client_id
  end 

  def vendor_id
    booking_items[-1].vendor_id
  end 


  private

  def set_booking_status
    self.booking_status_id = 1 if self.booking_status_id.nil?
  end 

  def set_client_id
    self.client_id = client_id
  end 

  def set_vendor_id
    self.vendor_id = vendor_id
  end 

  def update_booking_total_price
    self[:total_price] = total_price
  end 

  def update_booking_duration
    self[:total_duration] = total_duration_minutes
  end 

  
end
