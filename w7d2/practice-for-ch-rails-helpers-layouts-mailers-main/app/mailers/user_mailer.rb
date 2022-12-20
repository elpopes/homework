class UserMailer < ApplicationMailer
    default from: 'GeorgieCat <99catsadmin@appacademy.io>'

    def welcome_email(user)
        @user = user
        @url = 'http://localhost:3000/session/new'
        mail(to: @user.username, subject: 'Welcome to cats cats cats!!!')
    end
end
