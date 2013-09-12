class UsersController < InheritedResources::Base
  before_action :facebook_auth, only: :create
  before_action(only: :index) { @digits = User.count.to_s.split('') }
  layout false, only: [:new, :list]

  def index
    @users = User.order("created_at DESC").limit(32)
    index!
  end

  def list
    index!
  end

  def create
    facebook_data = request.env['omniauth.auth']

    if facebook_data.present?
      params[:user] = { 
        name: facebook_data[:info][:name], 
        email: facebook_data[:info][:email], 
        phone: session.delete(:user_phone),
        avatar: facebook_data[:info][:image]
      }
    end

    @user = User.create_with(params[:user]).find_or_create_by(email: params[:user][:email])
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def alert
    UserMailer.alert.deliver
    redirect_to "#{root_path}#livestream", alert: true
  end

  def permitted_params
    params.permit(user: [:name, :email, :phone, :avatar])
  end

  def oauth_failure
    redirect_to root_path
  end

  private

  def facebook_auth
    if params[:facebook] == "true"
      session[:user_phone] = params[:user][:phone]
      redirect_to facebook_auth_path
    end
  end
end
