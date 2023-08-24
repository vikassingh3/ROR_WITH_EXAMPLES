class ApplicationController < ActionController::Base
    private
    def token(user_id)
      date = Time.now.to_i
      payload = {
        user_id: user_id,
        date: date
      }
      JWT.encode(payload, hmac_secret, 'HS256')
    end

  
    def hmac_secret
      ENV["API_SECRET_KEY"]
    end
  
    def client_has_valid_token?
      !!current_user_id
    end
  
    def current_user_id
      begin
        token = request.headers["authorization"]
        decoded_array = JWT.decode(token, hmac_secret, true, { algorithm: 'HS256' })
        payload = decoded_array
        
      rescue #JWT::VerificationError
        return nil
      end
      payload[0]["user_id"]
    end
  
    def require_login
      render json: {error: 'Unauthorized'}, status: :unauthorized if !client_has_valid_token?
    end

end
