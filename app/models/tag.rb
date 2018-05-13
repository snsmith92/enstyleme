class Tag < ApplicationRecord
  has_many :taggings
  has_many :services, through: :taggings
end
