require 'swagger_helper'

describe 'Doctors API' do
    path '/doctors' do
        get 'Retrieves Doctors' do
            tags 'Doctors'
            produces 'application/json'
            response '200', 'doctors found' do
                schema type: :array,
                items: {
                    type: :object,
                    properties: {
                        id: { type: :integer },
                        name: { type: :string },
                        speciality: { type: :string },
                        description: { type: :string },
                        graduation: { type: :string },
                        image: { type: :string },
                        created_at: { type: :string },
                        updated_at: { type: :string }
                    },
                    required: [ 'id', 'name', 'speciality', 'description', 'graduation', 'image', 'created_at', 'updated_at' ]
                }
                run_test!
            end
            response '404', 'doctors not found' do
                run_test!
            end
        end
    end

    path '/doctors/{id}' do
        get 'Retrieves a doctor' do
            tags 'Doctors'
            produces 'application/json'
            parameter name: :id, in: :path, type: :integer
            response '200', 'doctor found' do
                schema type: :object,
                properties: {
                    id: { type: :integer },
                    name: { type: :string },
                    speciality: { type: :string },
                    description: { type: :string },
                    graduation: { type: :string },
                    image: { type: :string },
                    created_at: { type: :string },
                    updated_at: { type: :string }
                },
                required: [ 'id', 'name', 'speciality', 'description', 'graduation', 'image', 'created_at', 'updated_at' ]
                run_test!
            end
            response '404', 'doctor not found' do
                run_test!
            end
        end
    end
end

