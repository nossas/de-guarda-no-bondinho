class UserMailer < ActionMailer::Base
  default from: ENV["DEFAULT_FROM_EMAIL"]
  
  def welcome user
    @user = user
    mail to: user.email, subject: "Obrigada por ficar de Guarda pelos Bondinhos de Santa Teresa!"
  end

  def alert
    mail to: ENV["ADMIN_EMAIL"], subject: "Alerta aos Guardiões!"
  end
end
