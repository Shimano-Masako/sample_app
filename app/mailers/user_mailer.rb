class UserMailer < ApplicationMailer
  def account_activation(user)
    @user = user

    log = Logger.new(STDOUT)
    log.fatal('==================================')
    log.fatal(user.name)
    log.fatal(user.email)
    log.fatal('==================================')

    mail to: user.email, subject: 'Account activation'
  end

  def password_reset
    @greeting = 'Hi'

    mail to: 'to@example.org'
  end
end
