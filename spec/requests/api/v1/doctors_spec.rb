require 'swagger_helper'

RSpec.describe 'api/v1/doctors', type: :request do
  path '/api/v1/doctors' do
    get('list doctors') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create doctor') do
      response(200, 'successful') do

        run_test!
      end
    end
  end

  path '/api/v1/doctors/{id}' do
    parameter name: 'id', in: :path, type: :number, description: 'id'

    get('show doctor') do
      response(200, 'successful') do
        let(:doctor) { 
          Doctor.create(name: 'Steven Hobb', speciality: 'Dentist', description: 'Top dentist in the city of New York. Come get your dentals corrected in a single appointment. ', graduation: '2001-01-30', image: 'https://static9.depositphotos.com/1037778/1113/i/600/depositphotos_11138153-stock-photo-mature-dentist-surgeon-at-office.jpg')
        }
        let (:id) { doctor.id }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete doctor') do
      response(200, 'successful') do
        let(:doctor) { 
          Doctor.create(name: 'Steven Hobb', speciality: 'Dentist', description: 'Top dentist in the city of New York. Come get your dentals corrected in a single appointment. ', graduation: '2001-01-30', image: 'https://static9.depositphotos.com/1037778/1113/i/600/depositphotos_11138153-stock-photo-mature-dentist-surgeon-at-office.jpg')
        }
        let (:id) { doctor.id }
        
        run_test!
      end
    end
  end
end
