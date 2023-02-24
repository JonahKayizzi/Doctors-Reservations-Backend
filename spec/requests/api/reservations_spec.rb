require 'swagger_helper'

describe 'Reservations API' do
    path '/reservations' do
        get 'Retrieves Reservations' do
            tags 'Reservations'
            produces 'application/json'
            response '200', 'reservations found' do
                schema type: :array,
                items: {
                    type: :object,
                    properties: {
                        id: { type: :integer },
                        date: { type: :string },
                        city: { type: :string },
                        doctor_id: { type: :integer },
                        user_id: { type: :integer },
                        created_at: { type: :string },
                        updated_at: { type: :string }
                    },
                    required: [ 'id', 'date', 'city', 'doctor_id', 'user_id', 'created_at', 'updated_at' ]
                }
                run_test!
            end
            response '404', 'reservations not found' do
                run_test!
            end
        end
    end

end


