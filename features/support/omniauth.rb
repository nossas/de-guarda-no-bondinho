# coding: utf-8

Before('@omniauth_test') do
  OmniAuth.config.test_mode = true

  OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(
    :provider => "facebook", 
    :uid => "536687842", 
    :info => {
      :name => "Nícolas Iensen",
      :email => "nicolas@meurio.org.br", 
      :first_name => "Nícolas", 
      :last_name => "Iensen", 
      :image => "http://www.gravatar.com/avatar/e1ff427530e3fe61b67729327f83c5d1.jpg?s=260&d=http://meurio.org.br/assets/avatar_blank.png"
    }, 
    :credentials => {
      :token => "ASFGHJGHFGDSFDFGHDGF", 
      :secret => "asasdasd"
    }
  )
end

After('@omniauth_test') do
  OmniAuth.config.test_mode = false
end
