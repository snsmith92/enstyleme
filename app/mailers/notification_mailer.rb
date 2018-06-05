class NotificationMailer < ApplicationMailer
  default from: "notifications@enstyle.me"

  def vendor_created(vendor)
    @user = vendor.user
    @first_name = vendor.first_name
    mail(to: @user.email,
      subject: "Welcome to Enstyle.me, #{vendor.name}!")
  end 

end
