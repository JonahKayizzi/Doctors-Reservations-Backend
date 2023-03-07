class User < ApplicationRecord
  validates :user_name, presence: true
  has_many :reservations
end
