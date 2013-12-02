class UserMailer < ActionMailer::Base
  default from: "Meu Rio <contato@meurio.org.br>"
  
  def welcome user
    @user = user
    mail to: user.email, subject: "Confirme sua presença no bloco-ato"
  end

  def alert
    mail to: "equipe@meurio.org.br", subject: "Alerta aos Guardiões!"
  end
end
