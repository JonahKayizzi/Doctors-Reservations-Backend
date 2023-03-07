require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before :each do
    @user = User.new(
      user_name: 'Tom'
    )
    @doctor = Doctor.new(
      name: 'Tom',
      speciality: 'General',
      description: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      graduation: '20/01/1998',
      image: '#'
    )
    @reservation = Reservation.new(
      city: 'Buenos Aires',
      user: @user,
      doctor: @doctor,
      date: '2024-03-01'
    )

    @user.save
    @doctor.save
    @reservation.save
  end
  it 'city should be present' do
    @reservation.city = nil
    expect(@reservation).to_not be_valid
  end
  it 'user should be present' do
    @reservation.user = nil
    expect(@reservation).to_not be_valid
  end
  it 'doctor should be present' do
    @reservation.doctor = nil
    expect(@reservation).to_not be_valid
  end
  it 'doctor should be unique per day' do
    @reservation2 = Reservation.new(
      city: 'Buenos Aires',
      user: @user,
      doctor: @doctor,
      date: '2024-03-01'
    )
    expect(@reservation2).to_not be_valid
    @reservation3 = Reservation.new(
      city: 'Buenos Aires',
      user: @user,
      doctor: @doctor,
      date: '2024-03-02'
    )
    expect(@reservation3).to be_valid
  end

  it 'date should be present' do
    @reservation.date = nil
    expect(@reservation).to_not be_valid
  end
  it 'date should be in date format' do
    @reservation.date = 'not a date'
    expect(@reservation).to_not be_valid
  end
  it 'date should be greater than today' do
    @reservation.date = '2020-03-01'
    expect(@reservation).to_not be_valid
  end
end
