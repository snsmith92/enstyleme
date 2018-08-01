class Unavailability < ApplicationRecord
  belongs_to :vendor
  
  def check_duplicate_unavailability
    day = self.day
    vendor_id = self.vendor_id
    unavailability_days = Unavailability.where(day: day, vendor_id: vendor_id)
    if unavailability_days.length > 1
      availability_days[0].delete
    end 
  end 
end
