class Clients::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @client = Client.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @client
  end 

  def google_oauth2
    @client = Client.from_omniauth(request.env["omniauth.auth"])
    if @client.persisted?
      sign_in @client, :event => :authentication 
      set_flash_message(:notice, :success, :kind => "Google") if is_navigational_format?
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
    end
    sign_in_and_redirect @client
  end  
end
