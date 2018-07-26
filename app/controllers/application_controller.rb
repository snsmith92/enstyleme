class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_booking

  def after_sign_out_path_for(resource_or_scope)
    URI.parse(request.referer).path if request.referer
  end

  
  def current_booking
    unless @current_booking
      if current_client && current_client.bookings.present?
        current_client.bookings.where(booking_status: 1).last
      elsif session[:booking_id]
        Booking.where(id: session[:booking_id])
      else
        Booking.new
      end 
    # if !session[:booking_id].nil?
    #   Booking.find(session[:booking_id])
    # else
    #   Booking.new
    end
  end

end
