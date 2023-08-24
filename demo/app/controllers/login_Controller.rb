
class LoginController < ApplicationController
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token



    #POST /sign_up
    def user_sign_up
        hello = JSON.parse(request.body.read)
        puts hello.inspect, "--------------------"
        puts hello["email"], "=+++++++++++"
        if !hello["email"].present?
            render plain: JSON.parse({:error => "email can't be empty"}.to_json)
        elsif !hello["username"].present?
            render plain: JSON.parse({:error => "username can't be empty"}.to_json)
        elsif !hello["password"].present?
            render plain: JSON.parse({:error => "password can't be empty"}.to_json)
        else
            if User.find_by(email: hello["email"])
                render plain: JSON.parse({:error => "email already exists"}.to_json)
            elsif User.find_by(username: hello["username"])
                render plain: JSON.parse({:error => "username already exists"}.to_json)
            else
            User.create(username: hello["username"], email: hello["email"], password: hello["password"])
            render plain: JSON.parse({:success => "User created"}.to_json)  
            end
        end      
    end
 
    # def user_params
    #     params.permit(:username, :email, :password)
    # end
    #POST /sign_in
    def user_sign_in
        hello = JSON.parse(request.body.read)
       
        if !hello["email"].present?
            render plain: JSON.parse({:error => "email can't be empty"}.to_json)
        elsif !hello["password"].present?
            render plain: JSON.parse({:error => "password can't be empty"}.to_json)
        elsif !User.find_by(email: hello["email"])
            render plain: JSON.parse({:error => "email doesn't exist"}.to_json)
        elsif !User.find_by(email: hello["email"]).authenticate(hello["password"])
            render plain: JSON.parse({:error => "password is incorrect"}.to_json)
        else
            data = User.find_by(email: hello["email"]).id
            redis = Redis.new(host: "localhost", port: 6379)
            redis.setex(data, 60*20,token(data))
            render plain: JSON.parse({"token" => token(data) }.to_json)
        end
    end


    #POST /forgot_password
    def forgot_password
        hello = JSON.parse(request.body.read)
        if !hello["email"].present?
            render plain: JSON.parse({:error => "email can't be empty"}.to_json)
        elsif !User.find_by(email: hello["email"])
            render plain: JSON.parse({:error => "email doesn't exist"}.to_json)
        else
            token = User.find_by(email: hello["email"]).id
            email = User.find_by(email: hello["email"])
            hello = token(token)
            redis = Redis.new(host: "localhost", port: 6379)
            redis.setex(token, 60*20, hello)
            UserMailer.welcome_Email(email, hello).deliver_now
            render plain: JSON.parse({"token" => hello }.to_json)        
        end
    end         
end