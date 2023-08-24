require "redis"

class RegistrationsController < ApplicationController
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token

    
    before_action :require_login

    #GET /get_user/:id
    def show
        user = User
        puts "---", user.find_by(id: params[:id]), "=========================="
        if user.find_by(id: params[:id]) == nil
            render plain: JSON.parse({:error => "user not found"}.to_json), status: 404
        else
            render plain: JSON.parse(user.find_by(id: params[:id]).to_json) , status: 200
        end
    end

    #GET /get_all_users
    def index
        user = User
        
        render plain: JSON.parse(user.all.to_json)
    end


    #PATCH /update_user/:id
    def update
        user = User
        data = JSON.parse(request.body.read)
        if user.find_by(id: params[:id]) == nil
            render plain: JSON.parse({:error => "user not found"}.to_json)
        else
            user.find_by(id: params[:id]).update(data)
            render plain: JSON.parse({:success => "User updated"}.to_json)
        end
        
    end

    #DELETE /delete_user/:id
    def destroy
        user = User
        redis = Redis.new(host: "localhost", port: 6379)
        if user.find_by(id: params[:id]) == nil
            render plain: JSON.parse({:error => "user not found"}.to_json)
        else
            user.find_by(id: params[:id]).destroy
            redis.del(params[:id])
            render plain: JSON.parse({:success => "User deleted"}.to_json)
        end
    end

    #POST /log_out/:id
    def log_out
        redis = Redis.new(host: "localhost", port: 6379)
        if request.headers["authorization"] == redis.get(params[:id])
            redis.del(params[:id])
            render plain: JSON.parse({:success => "User logged out"}.to_json)
        else
            render plain: JSON.parse({:error => "Invalid token"}.to_json)
        end        
    end


    #POST /reset_password

    def reset_password
        header = request.headers["authorization"]
        decoded_array = JWT.decode(header, hmac_secret, true, { algorithm: 'HS256' })
        payload = decoded_array
        payload[0]["user_id"]
        redis = Redis.new(host: "localhost", port: 6379)
        if header != redis.get(payload[0]["user_id"])
            render plain: JSON.parse({:error => "Invalid token"}.to_json)
        else
            new_password = JSON.parse(request.body.read)
            confirm_new_password = JSON.parse(request.body.read)
            if !new_password["new_password"].present?
                render plain: JSON.parse({:error => "Missing new_password"}.to_json)
            elsif !confirm_new_password["confirm_new_password"].present?
                render plain: JSON.parse({:error => "Missing_confirm new password"}.to_json)
            elsif new_password["new_password"] != confirm_new_password["confirm_new_password"]
                render plain: JSON.parse({:error => "passwords don't match"}.to_json)
            elsif new_password["new_password"].length < 6
                render plain: JSON.parse({:error => "password must be at least 6 characters"}.to_json)
            else
                user = User
                user.find_by(id: payload[0]["user_id"]).update(password: new_password["new_password"])
                render plain: JSON.parse({:success => "Password reset"}.to_json)
            end
        end


       
    end
    

end