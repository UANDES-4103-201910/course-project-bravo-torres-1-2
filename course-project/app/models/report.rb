class Report < ApplicationRecord
  validates :text, length: { in: 1..150 }
  belongs_to :user
  belongs_to :post
end
