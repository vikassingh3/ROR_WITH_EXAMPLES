require 'rails_helper'

RSpec.describe "Registrations", type: :request do
  # describe "GET /index" do
  #   pending "add some examples (or delete) #{__FILE__}"
  # end
  path '/get_user/{id}' do

    get('get_user/{id}') do
      security_scheme 'api_key', type: :apiKey, in: :header, name: 'authorization'
      tags "User"
      consumes "application/json"
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

  end

end
