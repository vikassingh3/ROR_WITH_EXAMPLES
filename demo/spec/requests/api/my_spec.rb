require 'swagger_helper'

RSpec.describe 'api/my', type: :request do
    path '/get_user/{id}' do
        get('get_user/{id}') do
            security_scheme 'api_key', type: :apiKey, in: :header, name: 'authorization'
            tags 'User'
        consumes 'application/json'
        response(200, 'successful') do
            let(:id) { '1' }
            let(:token) { '123' }
            let(:headers) { { 'apikey' => token } }
            run_test!
        end
        end
    end

    path '/update_user/{id}' do
        patch('update_user/{id}') do
        tags 'User'
        consumes 'application/json'
        response(200, 'successful') do
            let(:id) { '1' }
            let(:token) { '123' }
            let(:headers) { { 'authorization' => token } }
            run_test!
        end
        end
    end


end
