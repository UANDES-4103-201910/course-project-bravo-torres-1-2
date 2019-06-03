class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { in: 6..12 }
  has_many :user_types
  has_many :like_posts
  has_many :dis_liked_posts
  has_many :posts
  has_many :reports
  def self.sign_in_from_omniauth(auth)
    find_by(provider: auth['provider'], uid: auth['uid'] ) || create_user_from_omniauth(auth)
  end

  def self.create_user_from_omniauth(auth)
    create(
      provider: auth['provider'],
      uid: auth['uid'],
      name: auth['info']['name']
      )
  end
end
