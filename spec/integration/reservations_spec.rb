require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  before(:each) do
    @user = User.create(id: 1, user_name: 'Joshep Thiele')
    @doctor = Doctor.create(name: 'Steven Hobb', speciality: 'Dentist', graduation: '2001-01-30',
                            description: "Top dentist in the city of New York. Come get your
                            dentals corrected in a single appointment. ",
                            image: 'https://static9.depositphotos.com/1037778/1113/i/600/depositphotos_11138153-stock-photo-mature-dentist-surgeon-at-office.jpg')
  end

  describe 'GET /index' do
    it 'returns http success' do
      get "/api/v1/users/#{@user.id}/reservations"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      post "/api/v1/users/#{@user.id}/reservations", params: {
        reservation: {
          date: '10/04/2023',
          city: 'New York (NY)',
          user_id: @user.id,
          doctor_id: @doctor.id
        }
      }
      expect(response).to have_http_status(:success)
    end
  end
end
