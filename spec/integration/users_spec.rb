require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe ' POST /create' do
    it 'returns http success' do
      post '/api/v1/users', params: {
        user: {
          user_name: 'Joshep Thiele'
        }
      }
      expect(response).to have_http_status(:success)
    end
  end
end
