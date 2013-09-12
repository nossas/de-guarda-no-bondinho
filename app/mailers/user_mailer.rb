class UserMailer < ActionMailer::Base
  default from: "contato@meurio.org.br"
  
  def welcome user
    mail to: user.email, subject: "Obrigado por ficar de Guarda pelos Bondinhos de Santa Teresa!"
  end

  def alert
    mail to: ENV["ADMIN_EMAIL"], subject: "Alerta aos Guardiões!"
  end
end
