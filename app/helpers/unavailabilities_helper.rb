module UnavailabilitiesHelper
  def show_unavailable(day, vendor)
    unavailability = Unavailability.find_by(day: day, vendor_id: vendor)
    if unavailability.nil?
      "No breaks".html_safe
    else 
      "#{unavailability.break_start.strftime('%I:%M %p')} to #{unavailability.break_end.strftime('%I:%M %p %Z')}".html_safe
    end 
  end 

  def unavailability_set?(day, vendor)
    unavailability = Unavailability.find_by(day: day, vendor_id: vendor)
    if unavailability.nil?
      return false 
    else 
      return true
    end 
  end 

  def current_unavailability(day, vendor)
    unavailability = Unavailability.find_by(day: day, vendor_id: vendor)
    if unavailability.nil?
      return false
    else
      unavailability.id
    end 
  end 
end
