require 'rails_helper'

RSpec.describe 'Doctors', type: :request do
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
    
end