class UserMailer < ActionMailer::Base
  default from: "Alessandra - Meu Rio <alessandra@meurio.org.br>"
  
  def welcome user
    @user = user
    mail to: user.email, subject: "Obrigada por ficar de Guarda pelos Bondinhos de Santa Teresa!"
  end

  def alert
    mail to: "equipe@meurio.org.br", subject: "Alerta aos Guardiões!"
  end
end
