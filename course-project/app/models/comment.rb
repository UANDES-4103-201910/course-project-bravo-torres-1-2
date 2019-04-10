class Comment < ApplicationRecord
  validates :text, length: { in: 4..150 }
  after_create do
   self.creation_date = Time.now 
  end
  belongs_to :post
  belongs_to :user
end
