class Post < ApplicationRecord
  cattr_accessor :current_user
  validates :title, length: { in: 4..30 }
  validates :text, length: { in: 1..150 }
  after_create do
   self.creation_date = Time.now
  end 
  before_create do
      self.user_id = current_user.user_id
      self.geofence_id = current_user.geofence_id
      self.apropriated = true
      self.is_open = true
      self.is_solved = false
      self.share_counter = 0
      self.report_counter =0
      self.is_hidden= false
      self.is_linked = true
      self.file_attachment = false
    end

  has_many :liked_posts
  has_many :dis_liked_posts
  has_many :reports
  has_one_attached :image 
end
