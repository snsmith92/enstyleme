class User < ApplicationRecord
  has_one :vendor
  has_many :services
  has_many :availabilities


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :confirmable, :rememberable, :trackable, :validatable
end
