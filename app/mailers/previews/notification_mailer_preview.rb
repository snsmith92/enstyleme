class NotificationMailerPreview < ActionMailer::Preview
   def vendor_created
    NotificationMailer.vendor_created(Vendor.last)
  end 

end