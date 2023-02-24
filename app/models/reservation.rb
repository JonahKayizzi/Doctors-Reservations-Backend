class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates_presence_of :user, :doctor, :date, :city

  # Validates whether a date is recorded in a valid format and greater than today
  validates_date :date, after: :today

  # Validates whether a doctor only is able to be reserved once per day for a particular city
  validates_uniqueness_of :doctor, scope: %i[date]
end
