class UserType < ApplicationRecord
  belongs_to :user
  attribute :user_is, default: "Regular"
end
