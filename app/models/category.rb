class Category < ApplicationRecord
  has_many :vendors

  extend FriendlyId
  friendly_id :name, use: :slugged
end
