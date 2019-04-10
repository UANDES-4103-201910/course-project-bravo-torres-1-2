class User < ApplicationRecord
  
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { in: 9..12 }
  validates :phone, length: { in: 8..12 }
  belongs_to :geofence
end
