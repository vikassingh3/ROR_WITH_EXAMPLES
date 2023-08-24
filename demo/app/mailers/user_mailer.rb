class UserMailer < ApplicationMailer
    # default from: 'niranjan.mobcoder@gmail.com'
    def welcome_Email(user, token)
        @user = user
        puts @user.email, "+++++++++++++++++++++++++++++"
         mail(to: @user.email, subject: 'Welcome to MobCoder', content_type: 'text/html', body: token)
        # mail(to: @user.email, subject: 'Welcome to MobCoder', content_type: 'text/html', body: "<h1>Welcome to MobCoder</h1> <p>Please click on the link below to verify your email address and complete your registration</p> <a href='http://localhost:3000/verify?token=#{token}'>Verify Email</a>", token: token)
      end
end
