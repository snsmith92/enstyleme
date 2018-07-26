class Client < ApplicationRecord
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable]
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |client|
      client.email = auth.info.email
      client.provider = auth.provider
      client.uid = auth.uid
      client.password = Devise.friendly_token[0,20]
      # client.token = auth.credentials.token
      # client.expires = auth.credentials.expires
      # client.expires_at = auth.credentials.expires_at
      # client.refresh_token = auth.credentials.refresh_token
    end 
  end 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
end
