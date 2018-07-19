class Availability < ApplicationRecord
  belongs_to :vendor
  belongs_to :user

  def check_duplicate
    day = self.day
    vendor_id = self.vendor_id
    availability_days = Availability.where(day: day, vendor_id: vendor_id)
    if availability_days.length > 1
      availability_days[0].delete
    end 
  end 
end
