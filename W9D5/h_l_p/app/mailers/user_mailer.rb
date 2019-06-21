class UserMailer < ApplicationMailer
    default from: 'AppAcademy <everybody@appacademy.io>'

    def welcom_email(user)
        @user = user
        @url = 'http://localhost:3000/cats'
        mail(to: "#{user.name} <#{user.email}>", subject: 'Welcome to the cat parade')
    end
end
