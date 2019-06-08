class Post < ApplicationRecord
  has_many :liked_posts
  has_many :dis_liked_posts
  has_many :reports
  has_many :comments, dependent: :destroy
  has_one_attached :image
  belongs_to :user

  #cattr_accessor :current_user

  validates :title, length: { in: 4..30 }
  validates :text, length: { in: 1..150 }

  after_create do
   self.creation_date = Time.now
  end

  attribute :is_open, default: true
  attribute :apropriated, default: true
  attribute :is_solved, default: false
  attribute :share_counter, default: 0
  attribute :report_counter, default: 0
  attribute :is_hidden, default: false
  attribute :is_linked, default: false
end
