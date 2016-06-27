class AppMailer < ApplicationMailer

  def comment_mail(user)
    @user = user
    mail(to: @user.email, subject: 'Check your comment section')
  end

end
