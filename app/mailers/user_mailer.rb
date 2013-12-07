class UserMailer < ActionMailer::Base
  default from: "Meu Rio <fernanda@meurio.org.br>"
  
  def welcome user
    @user = user
    mail to: user.email, subject: "O que mais você pode fazer pelo bondinho?"
  end

  def alert
    mail to: "equipe@meurio.org.br", subject: "Alerta aos Guardiões!"
  end
end
