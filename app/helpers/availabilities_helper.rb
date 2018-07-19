module AvailabilitiesHelper
  def show_available(day, vendor)
    availability = Availability.find_by(day: day, vendor_id: vendor)
    if availability.nil?
      "CLOSED".html_safe
    else 
      "#{availability.day_start.strftime('%I:%M %p')} to #{availability.day_end.strftime('%I:%M %p %Z')}".html_safe
    end 
  end 

  def availability_set?(day, vendor)
    availability = Availability.find_by(day: day, vendor_id: vendor)
    if availability.nil?
      return false 
    else 
      return true
    end 
  end 

  def current_availability(day, vendor)
    availability = Availability.find_by(day: day, vendor_id: vendor)
    if availability.nil?
      return false
    else
      availability.id
    end 
  end 
end
