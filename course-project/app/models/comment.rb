class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :text, length: { in: 4..150 }

  after_create do
   self.creation_date = Time.now 
  end
end
