class User < ApplicationRecord
  
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { in: 9..12 }
  validates :phone, length: { in: 8..12 }
  has_many :user_types
  has_many :like_posts
  has_many :dis_liked_posts
  has_many :posts
  has_many :reports
  belongs_to :geofence
end
