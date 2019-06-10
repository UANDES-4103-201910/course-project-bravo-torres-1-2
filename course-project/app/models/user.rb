class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { in: 6..12 }
  has_one :user_type
  has_many :like_posts
  has_many :dis_liked_posts
  has_many :posts
  has_many :reports
  has_many :comments, dependent: :destroy
  has_one_attached :avatar
  attribute :is_suspended, default: false
  attribute :has_prev_suspension, default: false
  attribute :is_blocked, default: false

  attribute :useris, default: "Regular"

  acts_as_voter
  acts_as_follower
  acts_as_mentionable
  acts_as_mentioner
  
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
