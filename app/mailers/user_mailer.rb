class UserMailer < ActionMailer::Base
  default from: "oglasnikzatutore.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://oglasnikzatutore.herokuapp.com'
    mail(to: @user.email, subject: 'Dobrodosli na tutori.etf.ba')
  end

  def activate_account_email(user)
    @user = user
    @url  = 'http://oglasnikzatutore.herokuapp.com/en/accounts/activate?id=' + @user.id.to_s + '&activation_code=' + @user.activation_code
    mail(to: @user.email, subject: 'Aktivirajte account')
  end
end
