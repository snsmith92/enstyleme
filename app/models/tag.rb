class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy 
  has_many :services, through: :taggings
end
