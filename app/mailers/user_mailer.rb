class UserMailer < ActionMailer::Base
  default from: "oglasnikzatutore.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def activate_account_email(user)
    @user = user
    @url  = 'http://127.0.0.1:3000/accounts/activate?id=' + @user.id.to_s + '&activation_code=' + @user.activation_code
    mail(to: @user.email, subject: 'Aktivirajte account')
  end
end
