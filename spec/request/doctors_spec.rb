require 'rails_helper'

RSpec.describe 'Doctors', type: :request do
  before :each do
    Doctor.create(
      name: 'Dr Steven Hobb',
      speciality: 'Dentist',
      description: 'Top dentist in the city of New York. Come get your dentals corrected in a single appointment. ',
      graduation: '2001-01-30',
      image: 'hobb.png'
    )
    Doctor.create(
      name: 'Peter Omaha',
      speciality: 'General Practice',
      description: "Top dentist in the city of New York. Come get your dentals corrected in a single appointment.
      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      graduation: '05/02/2010',
      image: 'https://t4.ftcdn.net/jpg/03/05/41/27/360_F_305412791_XRNiWaFCREjLLpSQfj0e736foBoYXXYv.jpg',
      id: 1
    )
  end
  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/doctors'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/api/v1/doctors/1'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    it 'returns http success' do
      post '/api/v1/doctors', params: {
        doctor: {
          name: 'Dr Steven Hobb',
          speciality: 'Dentist',
          description: 'Top dentist in the city of New York. Come get your dentals corrected in a single appointment. ',
          graduation: '2001-01-30',
          image: 'hobb.png'
        }
      }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE /destroy' do
    it 'returns http success' do
      delete '/api/v1/doctors/1'
      expect(response).to have_http_status(:success)
    end
  end
end
