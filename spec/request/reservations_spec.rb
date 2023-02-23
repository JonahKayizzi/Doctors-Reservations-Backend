require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/reservations'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/api/v1/reservations/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/api/v1/reservations'
      expect(response).to have_http_status(:success)
    end
  end
end
