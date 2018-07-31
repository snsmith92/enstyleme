if ENV["tags"]
  # Hair services
  Tag.delete_all
  Tag.create(name: "Hair Colouring/Highlights")
  Tag.create(name: "Hair Pressing/Straightening")
  Tag.create(name: "Locs/Dreadlocks")
  Tag.create(name: "Natural/Afro Hair")
  Tag.create(name: "Wedding Hair")
  Tag.create(name: "Weave/Extensions")
  Tag.create(name: "Wigs")
  Tag.create(name: "Barbering - Men")
  Tag.create(name: "Barbering - Women")
  Tag.create(name: "Braiding")
  Tag.create(name: "Haircuts")
  Tag.create(name: "Child Hair Care")
  Tag.create(name: "Blowout/Press")
  Tag.create(name: "Hair Consulting")
  Tag.create(name: "Hair Conditioning/Treatments")
  Tag.create(name: "Hair Loss Treatments")
  Tag.create(name: "Relaxers/Chemical Straightening")
  Tag.create(name: "Crochet Braids")
  Tag.create(name: "Sisterlocks")
  Tag.create(name: "Hair Dressing/Styling")

  # Nail services
  Tag.create(name: "Manicure")
  Tag.create(name: "Pedicure")
  Tag.create(name: "Nail Art")
  Tag.create(name: "Nail Refill")
  Tag.create(name: "Nail or Gel Polish Removal")
  Tag.create(name: "Acrylic/Nail Extensions")
  Tag.create(name: "Gel Polish")

  # Make-up Services
  Tag.create(name: "Makeup")
  Tag.create(name: "Wedding Makeup")

  # Face services
  Tag.create(name: "Threading - Eyebrows")
  Tag.create(name: "Waxing - Eyebrows")
  Tag.create(name: "Waxing - Upper lip")
  Tag.create(name: "Microblading")
  Tag.create(name: "Microdermabrasion")
  Tag.create(name: "Eyebrow Tinting")
  Tag.create(name: "Eyelash Extensions")
  Tag.create(name: "Acne Treatments")
  Tag.create(name: "Skin Consultation")
  Tag.create(name: "Facials")
  Tag.create(name: "(Semi)Permanent Makeup")

  # Hair removal
  Tag.create(name: "Waxing - Men's")
  Tag.create(name: "Men's Shaving")
  Tag.create(name: "IPL Hair Removal")
  Tag.create(name: "Waxing - Other")
  Tag.create(name: "Laser Hair Removal")
  Tag.create(name: "Sugaring")
  Tag.create(name: "Waxing - Bikini")
  Tag.create(name: "Threading - Other")
  Tag.create(name: "Waxing - Brazilian")
  Tag.create(name: "Waxing - Leg")
  Tag.create(name: "Waxing - Underarm")
  Tag.create(name: "Electrolysis")

  # Massage
  Tag.create(name: "Massage - Deep Tissue")
  Tag.create(name: "Massage - Swedish")
  Tag.create(name: "Massage - Pregnancy")
  Tag.create(name: "Massage - Other")

  # Body
  Tag.create(name: "Body Wraps")
  Tag.create(name: "Body Treatments")
  Tag.create(name: "Sauna or Steam Therapy")
  Tag.create(name: "Weight Loss Treatments")
  Tag.create(name: "Henna Designs")
  Tag.create(name: "Tattoos")
  Tag.create(name: "Piercings")
  Tag.create(name: "Lipo Treatments")
  Tag.create(name: "Spa")
  Tag.create(name: "Spray Tanning")
end 

# Categories
if ENV["categories"]
  Category.create(delete_all)
  Category.create(name: "Hair Stylist")
  Category.create(name: "Makeup Artist")
  Category.create(name: "Nail Technician")
  Category.create(name: "Esthetician")
  Category.create(name: "Barber")
  Category.create(name: "Massage Therapist")
  Category.create(name: "Photographer")
  Category.create(name: "Other")
end 

#Booking status
if ENV["booking_status"]
  BookingStatus.delete_all
  BookingStatus.create(id: 1, name: "In Progress")
  BookingStatus.create(id: 2, name: "Requested")
  BookingStatus.create(id: 3, name: "Confirmed")
  BookingStatus.create(id: 4, name: "Cancelled")
end 