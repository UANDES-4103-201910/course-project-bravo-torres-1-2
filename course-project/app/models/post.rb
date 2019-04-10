class Post < ApplicationRecord
  validates :title, length: { in: 4..30 }
  validates :text, length: { in: 1..150 }
  after_create do
   self.creation_date = Time.now
  end 
  belongs_to :user
  belongs_to :geofence
end
