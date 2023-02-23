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

    describe 'POST /create' do
        it 'returns http success' do
        post '/api/v1/doctors', params: {
            doctor: {
                "name":"Dr Steven Hobb",
                "speciality":"Dentist",
                "description":"Top dentist in the city of New York. Come get your dentals corrected in a single appointment. ",
                "graduation":"2001-01-30",
                "image":"hobb.png"
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