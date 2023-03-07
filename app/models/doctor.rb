class Doctor < ApplicationRecord
  has_many :reservations, dependent: :destroy
  validates :name, presence: true
  validates :speciality, presence: true
  validates :description, presence: true, length: { minimum: 25, maximum: 300 }
  validates :graduation, presence: true
  validates :image, presence: true
end
