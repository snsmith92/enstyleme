class BookingItem < ApplicationRecord
  belongs_to :service
  belongs_to :booking

  validate :service_present
  validate :booking_present

  before_save :finalize

  def price
    if service.cost_absolute.present?
      service.cost_absolute
    end
  end 

  private

  def service_present
    if service.nil?
      errors.add(:service, "is not valid or is not active.")
    end
  end 

  def booking_present
    if booking.nil?
      errors.add(:booking, "is not a valid order.")
    end 
  end 

  def finalize
    if service.cost_absolute.present?
      self[:price] = price
    end 
  end 
end
