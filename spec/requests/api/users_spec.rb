require 'swagger_helper'

RSpec.describe 'api/v1/users', type: :request do
  path '/users' do
    post 'Create or find a user' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          user_name: { type: :string }
        },
        required: %w[user_name]
      }
      response '201', 'user created' do
        let(:user) { { user_name: 'Joshep Thiele' } }
        run_test!
      end
      response '422', 'invalid request' do
        let(:user) { { user_name: 'Joshep Thiele' } }
        run_test!
      end
    end
  end
end
