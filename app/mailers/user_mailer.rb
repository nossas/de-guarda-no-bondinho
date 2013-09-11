class UserMailer < ActionMailer::Base
  default from: "contato@meurio.org.br"
  
  def welcome user
    mail to: user.email, subject: "Obrigado por ficar de Guarda pelos Bondinhos de Santa Teresa!"
  end
end
